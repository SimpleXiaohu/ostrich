/**
 * This file is part of Ostrich, an SMT solver for strings.
 * Copyright (c) 2023 Denghang Hu. All rights reserved.
 * 
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 * 
 * * Redistributions of source code must retain the above copyright notice, this
 *   list of conditions and the following disclaimer.
 * 
 * * Redistributions in binary form must reproduce the above copyright notice,
 *   this list of conditions and the following disclaimer in the documentation
 *   and/or other materials provided with the distribution.
 * 
 * * Neither the name of the authors nor the names of their
 *   contributors may be used to endorse or promote products derived from
 *   this software without specific prior written permission.
 * 
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 * FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 * COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT,
 * INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
 * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED
 * OF THE POSSIBILITY OF SUCH DAMAGE.
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

object SeqNthCEPreOp {

  def apply(index: Int): SeqNthCEPreOp = new SeqNthCEPreOp(index)
}

/** Pre-operator for array select.
  * @param index
  *  the selet index
  */
class SeqNthCEPreOp(index: Int) extends CEPreOp {

  override def toString = "seqNthCEPreOp"

  def apply(
      argumentConstraints: Seq[Seq[Automaton]],
      resultConstraint: Automaton
  ): (Iterator[Seq[Automaton]], Seq[Seq[Automaton]]) = {
    val res = resultConstraint.asInstanceOf[CostEnrichedAutomaton]
    val sigmaLabel = (Char.MinValue, Char.MaxValue)
    val emptyUpdate = Seq.fill(res.registers.length)(0)
    val argAut = new StringSeqAutomaton
    val old2new = res.states.map(s => (s, argAut.newState())).toMap
    val acceptState = argAut.newState()
    argAut.setAccept(acceptState, true)
    // the array elements before the index
    val preStates = Seq.fill(index*2)(argAut.newState())
    for (i <- 0 until index) {
      argAut.addTransition(preStates(i*2), sigmaLabel, preStates(i*2+1), emptyUpdate)
    }
    for (i <- 0 until index - 1) {
      argAut.addSeqElementConnect(preStates(i*2+1), preStates(i*2+2), emptyUpdate)
    }
    // the array elements after the index
    argAut.addTransition(acceptState, sigmaLabel, acceptState, emptyUpdate)
    argAut.addSeqElementConnect(acceptState, acceptState, emptyUpdate)
    // the array element at the index
    for ((s, l, t, v) <- res.transitions) {
      argAut.addTransition(old2new(s), l, old2new(t), v)
    }
    // connect the three parts
    argAut.addSeqElementConnect(preStates(index*2-1), old2new(res.initialState), emptyUpdate)
    for (s <- res.acceptingStates) {
      argAut.addSeqElementConnect(old2new(s), acceptState, emptyUpdate)
    }
    argAut.addEpsilon(argAut.initialState, preStates(0))
    argAut.registers = res.registers
    argAut.regsRelation = res.regsRelation
    argAut.toDot("selectCEPreOp")
    (Iterator(Seq(argAut)), Seq())
  }

  /** Evaluate the described function; return <code>None</code> if the function
    * is not defined for the given arguments.
    */
  def eval(arguments: Seq[Seq[Int]]): Option[Seq[Int]] = {
    val splitArray = StringSeqAutomaton.toSeqResult(arguments.head)
    Some(splitArray(index))
  }
}
