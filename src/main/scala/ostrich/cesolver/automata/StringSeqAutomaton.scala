/** This file is part of Ostrich, an SMT solver for strings. Copyright (c) 2023 Denghang Hu. All rights reserved.
  *
  * Redistribution and use in source and binary forms, with or without modification, are permitted provided that the
  * following conditions are met:
  *
  * * Redistributions of source code must retain the above copyright notice, this list of conditions and the following
  * disclaimer.
  *
  * * Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the
  * following disclaimer in the documentation and/or other materials provided with the distribution.
  *
  * * Neither the name of the authors nor the names of their contributors may be used to endorse or promote products
  * derived from this software without specific prior written permission.
  *
  * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES,
  * INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
  * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
  * SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
  * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
  * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
  * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  */

package ostrich.cesolver.automata

import ostrich.automata.TLabelEnumerator
import scala.collection.mutable.{TreeSet => MTreeSet, HashSet => MHashSet, HashMap => MHashMap, ArrayStack => MStack}
import ostrich.automata.Automaton
import scala.collection.mutable.ArrayBuffer
import ap.parser.IExpression.connectSimplify
import ap.parser.IBinJunctor
import ap.parser.ITerm
import ostrich.cesolver.util.ParikhUtil.sumVec
import ostrich.cesolver.util.ParikhUtil
import java.time.LocalDate
import java.io.File
import ostrich.cesolver.util.DotWriter

object StringSeqAutomaton {
  val seqSplitter: Int = 65536 // since the alphabet is from 0 to 65535

  def isSeqResult(word: Seq[Int]): Boolean = word.contains(seqSplitter)

  def isStringResult(word: Seq[Int]): Boolean = !isSeqResult(word)

  /** Get the sequence results from the word. For example, we get [a,b] for the input #a#b#
    */
  def toSeqResult(word: Seq[Int]): Seq[Seq[Int]] = {
    val result  = new ArrayBuffer[Seq[Int]]
    var current = new ArrayBuffer[Int]
    for (c <- word.tail)
      if (c == seqSplitter) {
        result += current
        current = new ArrayBuffer[Int]
      } else { current += c }
    result
  }

  /** Get the automaton accepting all sequences of strings, while promising that the fisrt transition is a sequence
    * connector.
    */
  def makeAnySeq(): StringSeqAutomaton = {
    val aut          = new StringSeqAutomaton
    val initialState = aut.initialState
    val loopState    = aut.newState()
    aut.addSeqElementConnect(initialState, loopState, Seq())
    aut.addTransition(loopState, (Char.MinValue, Char.MaxValue), loopState, Seq())
    aut.addSeqElementConnect(loopState, loopState, Seq())
    aut.setAccept(initialState, true)
    aut.setAccept(loopState, true)
    aut
  }

  def fromSeq(seq: Seq[Seq[Int]]) = {
    val aut       = new StringSeqAutomaton
    val stateSize = seq.size + seq.flatten.size
    val states = if (seq.isEmpty)
      Seq(aut.newState())
    else
      Seq.fill(stateSize)(aut.newState())
    var curStatei = 0
    for (s <- seq) {
      for (c <- s) {
        aut.addTransition(states(curStatei), (c.toChar, c.toChar), states(curStatei + 1), Seq())
        curStatei += 1
      }
      // not add element connector in the last sequence
      if (curStatei + 1 < states.size) {
        aut.addSeqElementConnect(states(curStatei), states(curStatei + 1), Seq())
        curStatei += 1
      }
    }
    aut.setAccept(states.last, true)
    aut.addSeqElementConnect(aut.initialState, states.head, Seq())
    aut
  }
}

/** Automaton for string sequences. The accepted words is in (#w)*# where # is the seqSplitter and w is a string, which
  * stands for the sequence of strings. For example, #a#b#c# stands for [a, b, c] and # stands for the empty sequence.
  * NOTE THAT in the automaton, we do not have the # in the end, besides it is added when call getAcceptedWord. For
  * example, the automaton for #a#b# is q0 -#-> q1 -a-> q2 -#-> q3 -b-> q4
  */

class StringSeqAutomaton extends CostEnrichedAutomatonBase {
  import StringSeqAutomaton._

  protected var seqElementConnect        = new MHashMap[State, MHashSet[(State, Update)]]()
  protected var seqElementConnectReverse = new MHashMap[State, MHashSet[(State, Update)]]()

  def addSeqElementConnect(from: State, to: State, update: Update): Unit = {
    seqElementConnect.getOrElseUpdate(from, new MHashSet[(State, Update)]) += ((to, update))
    seqElementConnectReverse.getOrElseUpdate(to, new MHashSet[(State, Update)]) +=
      ((from, update))
  }

  def nextSeqElements(s: State): Iterable[(State, Update)] = seqElementConnect.get(s)
    .getOrElse(Set())

  def previousSeqElements(s: State): Iterable[(State, Update)] = seqElementConnectReverse.get(s)
    .getOrElse(Set()).filter(outs => states.toSet.contains(outs._1))

  private def removeDeadStates(): StringSeqAutomaton = {
    val result    = new StringSeqAutomaton
    val old2new   = states.map(s => s -> result.newState()).toMap
    val workstack = new MStack[State]
    val visited   = new MHashSet[State]
    for (s <- acceptingStates) {
      workstack.push(s)
      result.setAccept(old2new(s), true)
    }
    while (workstack.nonEmpty) {
      val state = workstack.pop()
      visited += state
      // automaton transitions
      for ((from, l, v) <- incomingTransitions(state)) {
        if (!visited.contains(from)) { workstack.push(from) }
        result.addTransition(old2new(from), l, old2new(state), v)
      }
      // seq element connections
      for ((from, v) <- previousSeqElements(state)) {
        if (!visited.contains(from)) { workstack.push(from) }
        result.addSeqElementConnect(old2new(from), old2new(state), v)
      }
    }
    result.initialState = old2new(initialState)

    result.registers = registers
    result.regsRelation = regsRelation
    result
  }

  // Get all connectors
  def connectors(): MHashSet[(State, State, Update)] = {
    val res = new MHashSet[(State, State, Update)]()
    for (
      s            <- states;
      out          <- seqElementConnect.get(s);
      (outt, outv) <- out
    )
      res += ((s, outt, outv))
    res
  }

  def &(that: Automaton): Automaton = {
    val thatAut    = that.asInstanceOf[StringSeqAutomaton]
    val result     = new StringSeqAutomaton
    val pair2state = new MHashMap[(State, State), State]
    val workstack  = new MStack[(State, State)]
    pair2state += ((this.initialState, thatAut.initialState) -> result.initialState)
    workstack.push((this.initialState, thatAut.initialState))

    while (workstack.nonEmpty) {
      ap.util.Timeout.check
      val (from1, from2) = workstack.pop()
      val from           = pair2state((from1, from2))
      if (this.isAccept(from1) && thatAut.isAccept(from2)) { result.setAccept(from, true) }
      for (
        (to1, l1, v1) <- this.outgoingTransitions(from1);
        (to2, l2, v2) <- thatAut.outgoingTransitions(from2)
      )
        this.LabelOps.intersectLabels(l1, l2) match {
          case Some(label) =>
            val to = pair2state.getOrElseUpdate(
              (to1, to2), {
                workstack.push((to1, to2)) // only push when it is new
                result.newState()
              }
            )
            result.addTransition(from, label, to, v1 ++ v2)
          case _ => // do nothing
        }
      for (
        (to1, v1) <- this.nextSeqElements(from1);
        (to2, v2) <- thatAut.nextSeqElements(from2)
      ) {
        val to = pair2state.getOrElseUpdate(
          (to1, to2), {
            workstack.push((to1, to2)) // only push when it is new
            result.newState()
          }
        )
        result.addSeqElementConnect(from, to, v1 ++ v2)
      }
    }
    result.regsRelation =
      connectSimplify(Seq(this.regsRelation, thatAut.regsRelation), IBinJunctor.And)
    result.registers = this.registers ++ thatAut.registers
    result.removeDeadStates()
  }

  def ++ (that: StringSeqAutomaton): StringSeqAutomaton = {
    val result  = new StringSeqAutomaton
    val preEmptyUpdate = Seq.fill(this.registers.size)(0)
    val postEmptyUpdate = Seq.fill(that.registers.size)(0)
    val old2new = (this.states ++ that.states).map(s => s -> result.newState()).toMap
    // copy this automaton
    result.initialState = old2new(this.initialState)
    for (s <- this.states) {
      for ((to, l, v) <- this.outgoingTransitions(s))
        result.addTransition(old2new(s), l, old2new(to), v ++ postEmptyUpdate)
      for ((to, v) <- this.nextSeqElements(s))
        result.addSeqElementConnect(old2new(s), old2new(to), v ++ postEmptyUpdate)
    }
    // copy that automaton and set accepted states
    for (s <- that.states) {
      result.setAccept(old2new(s), that.isAccept(s))
      for ((to, l, v) <- that.outgoingTransitions(s))
        result.addTransition(old2new(s), l, old2new(to), preEmptyUpdate ++ v)
      for ((to, v) <- that.nextSeqElements(s))
        result.addSeqElementConnect(old2new(s), old2new(to), preEmptyUpdate ++ v)
    }
    // connect them
    for (before    <- this.acceptingStates)
      result.addEpsilon(old2new(before), old2new(that.initialState))
    result.registers = this.registers ++ that.registers
    result.regsRelation =
      connectSimplify(Seq(this.regsRelation, that.regsRelation), IBinJunctor.And)
    result
  }

  override def addEpsilon(s: State, t: State): Unit = {
    if (isAccept(t)) setAccept(s, true)
    for ((to, l, v) <- outgoingTransitions(t))
      addTransition(s, l, to, v)
    for ((to, v) <- nextSeqElements(t))
      addSeqElementConnect(s, to, v)
  }

  override lazy val states: Iterable[State] = {
    val visited  = new MHashSet[State]
    val worklist = new MStack[State]
    worklist.push(initialState)
    visited += initialState
    while (worklist.nonEmpty) {
      val state = worklist.pop()
      for ((to, _) <- outgoingTransitionsWithoutLabel(state) if !visited.contains(to)) {
        worklist.push(to)
        visited += to
      }
    }
    visited
  }

  override def outgoingTransitionsWithoutLabel(s: State): Iterable[(State, Seq[Int])] =
    outgoingTransitions(s).map { case (to, _, vec) => (to, vec) } ++ nextSeqElements(s)

  override def incomingTransitionsWithoutLabel(s: State): Iterable[(State, Seq[Int])] =
    incomingTransitions(s).map { case (from, _, vec) => (from, vec) } ++ previousSeqElements(s)

  // get accepted word when the registers is empty
  override def getAcceptedWord: Option[Seq[Int]] = {
    assert(registers.isEmpty)
    val visited  = new MHashSet[State]
    val worklist = new MStack[(State, Seq[Int])]
    worklist.push((initialState, Seq()))
    visited += initialState
    while (worklist.nonEmpty) {
      val (state, word) = worklist.pop()
      // always add the arraySplitter in the end
      if (isAccept(state)) { return Some(word :+ seqSplitter) }
      for ((to, label, _) <- outgoingTransitions(state) if !visited.contains(to)) {
        worklist.push((to, word :+ label._1.toInt))
        visited += to
      }
      for ((to, _) <- nextSeqElements(state) if !visited.contains(to)) {
        worklist.push((to, word :+ seqSplitter))
        visited += to
      }
    }
    None
  }

  override def getAcceptedWordByRegisters(registersModel: Map[ITerm, Int]): Option[Seq[Int]] = {
    if (registers.isEmpty) return getAcceptedWord
    val registersValues = registers.map(registersModel(_))
    // the state is (s, registersValues)
    val visited = new MHashSet[(State, Seq[Int])]
    // the worklist is a stack of (state, registersValues, word)
    val worklist = new MStack[(State, Seq[Int], Seq[Int])]
    worklist.push((initialState, Seq.fill(registers.size)(0), Seq()))
    visited += ((initialState, Seq.fill(registers.size)(0)))
    while (worklist.nonEmpty) {
      ap.util.Timeout.check
      val (state, regsVal, word) = worklist.pop()
      // always add the arraySplitter in the end
      if (isAccept(state) && regsVal == registersValues) return Some(word :+ seqSplitter)
      val sortedByVecSum = outgoingTransitions(state).toSeq.sortBy(_._3.sum).reverse
      for ((to, label, vec) <- sortedByVecSum) {
        val nextRegsVal = sumVec(regsVal, vec)
        if (
          !visited.contains((to, nextRegsVal)) &&
          nextRegsVal.zip(registersValues).forall(r => r._1 <= r._2)
        ) {
          worklist.push((to, nextRegsVal, word :+ label._1.toInt))
          visited += ((to, nextRegsVal))
        }
      }
      for ((to, vec) <- nextSeqElements(state)) {
        val nextRegsVal = sumVec(regsVal, vec)
        if (
          !visited.contains((to, nextRegsVal)) &&
          nextRegsVal.zip(registersValues).forall(r => r._1 <= r._2)
        ) {
          worklist.push((to, nextRegsVal, word :+ seqSplitter))
          visited += ((to, nextRegsVal))
        }
      }
    }
    None
  }

  // NOTE: This is overapproximation since we do not consider the registers.
  def isEmpty: Boolean = {
    val visited      = new MHashSet[State]
    val worklist     = new ArrayBuffer[State]
    val initialState = this.initialState
    worklist += initialState
    while (worklist.nonEmpty) {
      val state = worklist.head
      worklist -= state
      visited += state
      if (this.isAccept(state)) { return false }
      for ((to, _, _) <- outgoingTransitions(state) if !visited.contains(to)) worklist += to
      for ((to, _)    <- nextSeqElements(state) if !visited.contains(to)) worklist += to
    }
    true
  }

  def toDot(suffix: String): Unit = {
    if (!ParikhUtil.debugOpt) return
    states.zipWithIndex.toMap
    val outdir = "dot" + File.separator + LocalDate.now().toString
    new File(outdir).mkdirs()
    val dotfile    = outdir + File.separator + s"${suffix}.dot"
    val writer     = new DotWriter(dotfile.toString)
    val strbuilder = new StringBuilder
    strbuilder.append(s"""
      digraph G {
        rankdir=LR;
        init [shape=point];
        node [shape = doublecircle];
        ${acceptingStates.mkString(" ")}
        node [shape = circle];
        init -> ${initialState};""")

    for ((s, (left, right), t, vec) <- transitions.toSeq.sortBy(_._1))
      strbuilder.append(s"""
        ${s} -> ${t} [label = \"${left.toInt},${right.toInt}:(${vec.mkString(",")})\"]""")
    for (
      (s, targetsWithVec) <- seqElementConnect;
      (t, vec)            <- targetsWithVec
    )
      strbuilder.append(s"""
        ${s} -> ${t} [label = \"seqConnector:(${vec.mkString(",")})\"]""")
    strbuilder.append("\n")
    strbuilder.append(s"""        \"${registers.mkString(", ")}\" [shape=plaintext]""")
    strbuilder.append("\n      }")
    writer.closeAfterWrite(strbuilder.toString())
  }

  // non-implemented methods /////////////////////////////////
  def |(that: ostrich.automata.Automaton): ostrich.automata.Automaton = ???
  def apply(word: Seq[Int]): Boolean                                  = ???
  def unary_! : Automaton                                             = ???
  // non-implemented methods /////////////////////////////////

}
