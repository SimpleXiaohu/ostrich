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
import ostrich.cesolver.automata.CETransducer

object SplitCEPreOp {
  def apply(splitString: String): SplitCEPreOp = {
    val tran = ReplaceAllCEPreOp.buildTransducer(splitString.toCharArray())
    new SplitCEPreOp(tran)
  }

  def apply(splitReg: CostEnrichedAutomaton): SplitCEPreOp = {
    val tran = ReplaceAllCEPreOp.buildTransducer(splitReg)
    new SplitCEPreOp(tran)
  }

  

  private def deleteFirstConnectorAut(aut: StringSeqAutomaton) : StringSeqAutomaton = {
    // create a new automaton that deletes the first connector
    val deleteFirstConnectorAut     = new StringSeqAutomaton
    val old2new = aut.states.map(s => s -> deleteFirstConnectorAut.newState).toMap
    for ((s, l, t, v) <- aut.transitions)
      deleteFirstConnectorAut.addTransition(old2new(s), l, old2new(t), v)
    for ((s, t, v) <- aut.connectors())
      deleteFirstConnectorAut.addSeqElementConnect(old2new(s), old2new(t), v)
    for (s <- aut.acceptingStates)
      deleteFirstConnectorAut.setAccept(old2new(s), true)
    // delete first connector and store the update
    if (aut.isAccept(aut.initialState)) {
      deleteFirstConnectorAut.setAccept(deleteFirstConnectorAut.initialState, true)
    }
    for ((s, v) <- aut.nextSeqElements(aut.initialState)) {
      for ((to, lbl, nextv) <- aut.outgoingTransitions(s)) {
        deleteFirstConnectorAut.addTransition(deleteFirstConnectorAut.initialState, lbl, old2new(to), sumVec(v, nextv))
      }
      for ((to, nextv) <- aut.nextSeqElements(s)) {
        deleteFirstConnectorAut.addSeqElementConnect(deleteFirstConnectorAut.initialState, old2new(to), sumVec(v, nextv))
      }
    }
    deleteFirstConnectorAut.registers = aut.registers
    deleteFirstConnectorAut.regsRelation = aut.regsRelation
    deleteFirstConnectorAut.removeDeadStates()
    return deleteFirstConnectorAut
  }
}

/** Pre-operator for split constraint.
  */
class SplitCEPreOp(tran: CETransducer) extends CEPreOp {

  import SplitCEPreOp._
  override def toString = "splitCEPreOp"

  def apply(
      argumentConstraints: Seq[Seq[Automaton]],
      resultConstraint: Automaton
  ): (Iterator[Seq[Automaton]], Seq[Seq[Automaton]]) = {
    val res       = resultConstraint.asInstanceOf[StringSeqAutomaton]
    val splitHelpAut = deleteFirstConnectorAut(res)
    val internals = splitHelpAut.connectors()
    val argAut = tran.preImage(splitHelpAut, internals)
    (Iterator(Seq(argAut)), Seq())
  }

  /** Evaluate the described function; return <code>None</code> if the function is not defined for the given arguments.
    */
  def eval(arguments: Seq[Seq[Int]]): Option[Seq[Int]] = {
    import StringSeqAutomaton.seqSplitter
    // def splitLikeJS(a: String, b: String): Seq[String] =
    //   a.split(java.util.regex.Pattern.quote(b), -1) // `-1` keeps empty strings (like JS)
    // val argStr    = arguments.head.map(_.toChar).mkString
    // val resSeq    = splitLikeJS(argStr, splitString)
    // val resSeqInt = resSeq.map(_.map(_.toInt))
    // // always add the arraySplitter in the end
    // import StringSeqAutomaton.seqSplitter
    // Some(resSeqInt.foldLeft(Seq(seqSplitter))((spl, ele) => spl ++ ele :+ seqSplitter))
    Some(seqSplitter +: tran(arguments.head, Seq(seqSplitter)).get :+ seqSplitter)
  }
}
