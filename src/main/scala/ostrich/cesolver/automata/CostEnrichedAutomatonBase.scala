/** This file is part of Ostrich, an SMT solver for strings. Copyright (c) 2023
  * Denghang Hu. All rights reserved.
  *
  * Redistribution and use in source and binary forms, with or without
  * modification, are permitted provided that the following conditions are met:
  *
  * * Redistributions of source code must retain the above copyright notice,
  * this list of conditions and the following disclaimer.
  *
  * * Redistributions in binary form must reproduce the above copyright notice,
  * this list of conditions and the following disclaimer in the documentation
  * and/or other materials provided with the distribution.
  *
  * * Neither the name of the authors nor the names of their contributors may be
  * used to endorse or promote products derived from this software without
  * specific prior written permission.
  *
  * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
  * ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
  * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
  * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
  * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
  * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
  * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
  * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  * POSSIBILITY OF SUCH DAMAGE.
  */

package ostrich.cesolver.automata

import ostrich.automata._

import scala.collection.mutable.{
  HashMap => MHashMap,
  Stack => MStack,
  HashSet => MHashSet
}
import scala.collection.immutable.Map
import scala.collection.mutable.ArrayStack
import dk.brics.automaton.{State => BState}
import dk.brics.automaton.BasicOperations
import CEBasicOperations.toBricsAutomaton
import ap.parser.{ITerm, IFormula, IExpression}
import ostrich.cesolver.util.{ParikhUtil, TermGenerator, ConstSubstVisitor}
import IExpression.{connectSimplify}
import ap.parser.IBinJunctor

/** This is the implementation of cost-enriched finite automaton(CEFA). Each
  * transition of CEFA contains a vector of integers, which is used to record
  * the cost of the transition. The cost of a word is the sum of the costs of
  * its transitions. A linear arithmetic constrait is used to restrict the cost
  * of the word. For example, the linear arithmetic can be r < 10, where r is
  * the register storing the cost and if r is length of the word, we get a
  * automation accepting words of length less than 10.
  */
abstract class CostEnrichedAutomatonBase extends Automaton {

  type State = BState
  type TLabel = (Char, Char)
  type Update = Seq[Int]

  private var stateidx = 0

  /** The accepting condition
    */
  protected var _regsRelation: IFormula = IExpression.Boolean2IFormula(true)

  /** Registers storing count value for accepting state.
    */
  protected var _registers: Seq[ITerm] = Seq()

  /** The unique initial state
    */
  protected var _initialState: State = newState()

  protected val _state2transtions =
    new MHashMap[State, MHashSet[(State, TLabel, Update)]]
  protected val _state2incomingTranstions =
    new MHashMap[State, MHashSet[(State, TLabel, Update)]]

  val LabelOps: TLabelOps[TLabel] = BricsTLabelOps

  def newState(): State = synchronized {
    stateidx += 1
    new State() {
      val idx = stateidx
      override def toString(): String = {
        s"s${idx}"
      }
    }
  }

  /** The set of accepting states
    */
  def acceptingStates: Set[State] =
    (for (s <- states; if isAccept(s)) yield s).toSet
  def setAccept(s: State, b: Boolean) = s.setAccept(b)

  /** Iterate over automaton states
    */
  val states: Iterable[State]

  def size(): Int = _state2transtions.values.flatten.size

  /** Ask if state is accepting
    */
  def isAccept(q: State): Boolean = q.isAccept

  /** Given a state, iterate over all outgoing transitons with vector
    */
  def outgoingTransitions(
      s: State
  ): Iterable[(State, (Char, Char), Seq[Int])] =
    _state2transtions.get(s) match {
      case None           => Iterable.empty
      case Some(transSet) => transSet
    }
  
  def outgoingTransitionsWithoutLabel(s: State): Iterable[(State, Seq[Int])] =
    outgoingTransitions(s).map{case (to, _, vec) => (to, vec)}.toSet

  def incomingTransitions(
      t: State
  ): Iterable[(State, (Char, Char), Seq[Int])] =
    _state2incomingTranstions.get(t) match {
      case None => Iterable.empty
      // incoming states may not be reachable from initial state, filter them out
      case Some(transSet) =>
        transSet.filter(trans => states.toSet.contains(trans._1))
    }
    
  def incomingTransitionsWithoutLabel(s: State): Iterable[(State, Seq[Int])] =
    incomingTransitions(s).map{case (from, _, vec) => (from, vec)}.toSet

  def transitions: Iterable[(State, TLabel, State, Seq[Int])] = {
    for (from <- states; (to, lbl, vec) <- outgoingTransitions(from))
      yield (from, lbl, to, vec)
  }

  def transitionsWithOutLabel: Iterable[(State, State, Seq[Int])] = {
    for (from <- states; (to, vec) <- outgoingTransitionsWithoutLabel(from))
      yield (from, to, vec)
  }

  def addTransition(
      from: State,
      lbl: TLabel,
      to: State,
      vec: Seq[Int]
  ): Unit = {
    _state2transtions.get(from) match {
      case Some(set) => set.add((to, lbl, vec))
      case None      => _state2transtions.put(from, MHashSet((to, lbl, vec)))
    }
    _state2incomingTranstions.get(to) match {
      case Some(set) => set.add((from, lbl, vec))
      case None => _state2incomingTranstions.put(to, MHashSet((from, lbl, vec)))
    }
  }

  def addEpsilon(s: State, t: State): Unit = {
    if (isAccept(t)) setAccept(s, true)
    for ((to, lbl, vec) <- outgoingTransitions(t)) {
      addTransition(s, lbl, to, vec)
    }
  }

  def getAcceptedWordByRegisters(
      registersModel: Map[ITerm, Int]
  ): Option[Seq[Int]] 

  def getLengthAbstraction = throw new UnsupportedOperationException
  // Accessors and Mutators ////
  def initialState = _initialState

  def initialState_=(s: State) = _initialState = s

  def regsRelation = _regsRelation

  def registers = _registers

  def registers_=(registers: Seq[ITerm]) = _registers = registers

  def regsRelation_=(f: IFormula) = _regsRelation = f

  def removeDeadStates() : CostEnrichedAutomatonBase = {this}

  /////////////////////////////

  def emptinessCheckFormula = connectSimplify(Seq(
    ParikhUtil.parikhImage(this),
    regsRelation
  ), IBinJunctor.And)

  def toDot(suffix: String)
}
