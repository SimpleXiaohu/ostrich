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

package ostrich.cesolver.preop

import ostrich.automata.Automaton
import ostrich.cesolver.automata.CostEnrichedAutomaton
import ap.parser.ITerm
import ostrich.cesolver.util.TermGenerator
import ap.parser.IExpression
import ap.basetypes.IdealInt
import ostrich.cesolver.util.ParikhUtil.debugPrintln
import ostrich.cesolver.automata.StringSeqAutomaton
import ap.terfor.Term
import ap.terfor.linearcombination.LinearCombination

trait SeqNthCEPreOpBase extends CEPreOp {
  override def toString = "seqNthCEPreOp"
}

object SeqNthCEPreOp {
  def apply(index: ITerm): SeqNthCEPreOpBase = index match {
    case IExpression.Const(IdealInt(index)) =>
      new SeqNthCEPreOpConcrete(index)
    case _: ITerm => new SeqNthCEPreOp(index)

  }
}

// Pre-operator for seq.at, in the case where the index is a constant.
class SeqNthCEPreOpConcrete(index: Int) extends SeqNthCEPreOpBase {
  def apply(
      argumentConstraints: Seq[Seq[Automaton]],
      resultConstraint: Automaton
  ): (Iterator[Seq[Automaton]], Seq[Seq[Automaton]]) = {
    val res         = resultConstraint.asInstanceOf[CostEnrichedAutomaton]
    val sigmaLabel  = (Char.MinValue, Char.MaxValue)
    val emptyUpdate = Seq.fill(res.registers.length)(0)
    val argAut      = new StringSeqAutomaton
    val old2new     = res.states.map(s => (s, argAut.newState())).toMap
    // the sequence elements before the index
    val preStates = Seq.fill(index * 2)(argAut.newState())
    for (i <- 0 until index)
      argAut.addTransition(
        preStates(i * 2),
        sigmaLabel,
        preStates(i * 2 + 1),
        emptyUpdate
      )
    for (i <- 0 until index - 1)
      argAut.addSeqElementConnect(
        preStates(i * 2 + 1),
        preStates(i * 2 + 2),
        emptyUpdate
      )
    // the sequence element at the index
    for ((s, l, t, v) <- res.transitions)
      argAut.addTransition(old2new(s), l, old2new(t), v)
    // the sequence elements after the index
    for (s <- res.acceptingStates) {
      val acceptState = old2new(s)
      argAut.setAccept(acceptState, true)
      argAut.addTransition(acceptState, sigmaLabel, acceptState, emptyUpdate)
      argAut.addSeqElementConnect(acceptState, acceptState, emptyUpdate)
    }
    // connect the three parts
    argAut.addSeqElementConnect(
      preStates(index * 2 - 1),
      old2new(res.initialState),
      emptyUpdate
    )
    argAut.addEpsilon(argAut.initialState, preStates(0))
    argAut.registers = res.registers
    argAut.regsRelation = res.regsRelation
    (Iterator(Seq(argAut)), Seq())
  }

  /** Evaluate the described function; return <code>None</code> if the function is not defined for the given arguments.
    */
  def eval(arguments: Seq[Seq[Int]]): Option[Seq[Int]] = {
    val splitArray = StringSeqAutomaton.toSeqResult(arguments.head)
    Some(splitArray(index))
  }
}

// Pre-operator for seq.at, in the case where the index is a variable.
class SeqNthCEPreOp(index: ITerm) extends SeqNthCEPreOpBase {
  def apply(
      argumentConstraints: Seq[Seq[Automaton]],
      resultConstraint: Automaton
  ): (Iterator[Seq[Automaton]], Seq[Seq[Automaton]]) = {
    val res         = resultConstraint.asInstanceOf[CostEnrichedAutomaton]
    val sigmaLabel  = (Char.MinValue, Char.MaxValue)
    val argAut      = new StringSeqAutomaton
    val newRegister = TermGenerator().registerTerm
    val old2new = res.states.map(s => (s, argAut.newState())).toMap
    val updateIndex = Seq.fill(res.registers.length)(0) :+ 1
    val emptyUpdate = Seq.fill(res.registers.length+1)(0)
    // the sequence elements before the index
    argAut.addTransition(argAut.initialState, sigmaLabel, argAut.initialState, emptyUpdate)
    argAut.addSeqElementConnect(argAut.initialState, argAut.initialState, updateIndex)
    // the sequence element at the index
    for ((s, l, t, v) <- res.transitions)
      argAut.addTransition(old2new(s), l, old2new(t), v :+ 0)
    // the sequence elements after the index
    for (s <- res.acceptingStates) {
      val acceptState = old2new(s)
      argAut.setAccept(acceptState, true)
      argAut.addTransition(acceptState, sigmaLabel, acceptState, emptyUpdate)
    }
    // connect the three parts
    argAut.addEpsilon(argAut.initialState, old2new(res.initialState))
    argAut.regsRelation = res.regsRelation & newRegister === index
    argAut.registers = res.registers :+ newRegister
    (Iterator(Seq(argAut)), Seq())
  }

  def eval(arguments: Seq[Seq[Int]]): Option[Seq[Int]] = {
    val splitArray = StringSeqAutomaton.toSeqResult(arguments.head)
    val index = arguments(1)(0)
    Some(splitArray(index))
  }
}
