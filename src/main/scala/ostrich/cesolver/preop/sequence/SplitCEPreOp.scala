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

package ostrich.cesolver.preop.sequence

import ostrich.automata.Automaton
import ostrich.cesolver.automata.CostEnrichedAutomaton
import ap.parser.ITerm
import ostrich.cesolver.util.TermGenerator
import ap.parser.IExpression
import ap.basetypes.IdealInt
import ostrich.cesolver.automata.StringSeqAutomaton
import ostrich.cesolver.preop.CEPreOp
import ostrich.cesolver.preop.ReplaceAllCEPreOp
import scala.collection.mutable.ArrayBuffer
import ap.parser.smtlib.Absyn.Term
import ap.parser.IBinJunctor
import ostrich.cesolver.util.ParikhUtil.sumVec

object SplitCEPreOp {
  def apply(splitString: String): SplitCEPreOp = new SplitCEPreOp(splitString)
}

/** Pre-operator for split constraint.
  */
class SplitCEPreOp(splitString: String) extends CEPreOp {

  override def toString = "splitCEPreOp_" + '"' + splitString + '"'

  def apply(
      argumentConstraints: Seq[Seq[Automaton]],
      resultConstraint: Automaton
  ): (Iterator[Seq[Automaton]], Seq[Seq[Automaton]]) = {
    val res       = resultConstraint.asInstanceOf[StringSeqAutomaton]
    val tran      = ReplaceAllCEPreOp.buildTransducer(splitString.toCharArray())
    val deleteFirstConnectorAut = {
      val aut     = new StringSeqAutomaton
      val old2new = res.states.map(s => s -> aut.newState).toMap
      for ((s, l, t, v) <- res.transitions)
        aut.addTransition(old2new(s), l, old2new(t), v)
      for ((s, t, v) <- res.connectors())
        aut.addSeqElementConnect(old2new(s), old2new(t), v)
      for (s <- res.acceptingStates)
        aut.setAccept(old2new(s), true)
      // delete first connector and store the update
      if (res.isAccept(res.initialState)) {
        aut.setAccept(aut.initialState, true)
      }
      for ((s, v) <- res.nextSeqElements(res.initialState)) {
        for ((to, lbl, nextv) <- res.outgoingTransitions(s)) {
          aut.addTransition(aut.initialState, lbl, old2new(to), sumVec(v, nextv))
        }
        for ((to, nextv) <- res.nextSeqElements(s)) {
          aut.addSeqElementConnect(aut.initialState, old2new(to), sumVec(v, nextv))
        }
      }
      aut.registers = res.registers
      aut.regsRelation = res.regsRelation
      aut.removeDeadStates()
      aut
    }
    deleteFirstConnectorAut.toDot("deleteFirstConnectorAut")
    res.toDot("splitCEPreOp_res")
    val internals = deleteFirstConnectorAut.connectors()
    val argAut = tran.preImage(deleteFirstConnectorAut, internals)
    argAut.toDot(s"""splitCEPreOp_${splitString}_preImage""")
    (Iterator(Seq(argAut)), Seq())
  }

  /** Evaluate the described function; return <code>None</code> if the function is not defined for the given arguments.
    */
  def eval(arguments: Seq[Seq[Int]]): Option[Seq[Int]] = {
    def splitLikeJS(a: String, b: String): Seq[String] =
      a.split(java.util.regex.Pattern.quote(b), -1) // `-1` keeps empty strings (like JS)
    val argStr    = arguments.head.map(_.toChar).mkString
    val resSeq    = splitLikeJS(argStr, splitString)
    val resSeqInt = resSeq.map(_.map(_.toInt))
    // always add the arraySplitter in the end
    import StringSeqAutomaton.seqSplitter
    Some(resSeqInt.foldLeft(Seq(seqSplitter))((spl, ele) => spl ++ ele :+ seqSplitter))
  }
}
