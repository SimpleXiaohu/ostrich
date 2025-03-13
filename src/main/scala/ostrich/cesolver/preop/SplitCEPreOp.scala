/**
 * This file is part of Ostrich, an SMT solver for strings. Copyright (c) 2023 Denghang Hu. All
 * rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification, are permitted
 * provided that the following conditions are met:
 *
 * * Redistributions of source code must retain the above copyright notice, this list of conditions
 * and the following disclaimer.
 *
 * * Redistributions in binary form must reproduce the above copyright notice, this list of
 * conditions and the following disclaimer in the documentation and/or other materials provided with
 * the distribution.
 *
 * * Neither the name of the authors nor the names of their contributors may be used to endorse or
 * promote products derived from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR
 * IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND
 * FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 * DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY
 * WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
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

object SplitCEPreOp {

  def apply(splitString: String): SplitCEPreOp = new SplitCEPreOp(splitString)
}

/**
 * Pre-operator for split constraint.
 * @param splitString
 *   the split string
 */
class SplitCEPreOp(splitString: String) extends CEPreOp {

  override def toString = "splitCEPreOp"

  def apply(
      argumentConstraints: Seq[Seq[Automaton]],
      resultConstraint: Automaton
  ): (Iterator[Seq[Automaton]], Seq[Seq[Automaton]]) = {
    val res = resultConstraint.asInstanceOf[StringSeqAutomaton]
    val argAut = new CostEnrichedAutomaton
    val old2new = res.states.map(s => (s, argAut.newState())).toMap
    argAut.initialState = (old2new(res.initialState))

    for (s <- res.acceptingStates) { argAut.setAccept(old2new(s), true) }
    for ((s, l, t, v) <- res.transitions) { argAut.addTransition(old2new(s), l, old2new(t), v) }
    // replace the array spliter to the split string
    for (s <- res.states; t <- res.nextSeqElements(s)) {
      val newStates = Seq.fill(splitString.length + 1)(argAut.newState())
      for (i <- 0 until splitString.length) {
        argAut.addTransition(
          newStates(i),
          (splitString(i), splitString(i)),
          newStates(i + 1),
          Seq.fill(res.registers.length)(0)
        )
      }
      argAut.addEpsilon(old2new(s), newStates(0))
      argAut.addEpsilon(newStates(splitString.length), old2new(t))
    }
    argAut.registers = res.registers
    argAut.regsRelation = res.regsRelation
    (Iterator(Seq(argAut)), Seq())
  }

  /**
   * Evaluate the described function; return <code>None</code> if the function is not defined for
   * the given arguments.
   */
  def eval(arguments: Seq[Seq[Int]]): Option[Seq[Int]] = {
    val splitArray = arguments(0).map(_.toChar).mkString.split(splitString)
    val string2SeqInt = splitArray.map(_.toCharArray.map(_.toInt))
    val combinedWithArraySpliter = string2SeqInt
      .flatMap(x => x :+ StringSeqAutomaton.arraySplitter)
    Some(combinedWithArraySpliter)
  }
}
