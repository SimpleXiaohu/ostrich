package ostrich.cesolver.preop.sequence

import ostrich.cesolver.automata.StringSeqAutomaton
import ostrich.cesolver.preop.CEPreOp
import ostrich.automata.Automaton
import ostrich.cesolver.automata.StringSeqInitFinalAutomaton
import ap.parser.IExpression._
import ap.parser.IBinJunctor

object SeqConcatCEPreOp {
  def apply(): SeqConcatCEPreOp =
    new SeqConcatCEPreOp
}

/** Pre-operator for concatenation constraint.
  */
class SeqConcatCEPreOp extends CEPreOp {
  override def toString = "seqConcatCEPreOp"

  def apply(
      argumentConstraints: Seq[Seq[Automaton]],
      resultConstraint: Automaton
  ): (Iterator[Seq[Automaton]], Seq[Seq[Automaton]]) = {
    val res  = resultConstraint.asInstanceOf[StringSeqAutomaton]
    val arg1 = new StringSeqAutomaton
    val arg2 = new StringSeqAutomaton
    // make sure that the pre-image of right argument begins with seqSplitter
    val checkTheFirstConnectorAut = StringSeqAutomaton.makeAnySeq()
    val preImages = for (s <- res.states) yield {
      val left = StringSeqInitFinalAutomaton.setFinal(res, Set(s))
      val right = StringSeqInitFinalAutomaton.setInitial(res, s) &
        checkTheFirstConnectorAut
      val rightAsStrSeq = right.asInstanceOf[StringSeqAutomaton]
      if (right.isEmpty) {
        Seq()
      } else {
        val zipRegs = left.registers.zip(rightAsStrSeq.registers).zip(res.registers)
        val derivedRegsRelation = connectSimplify(
          zipRegs.map { case ((reg1, reg2), resReg) =>
            reg1 + reg2 === resReg
          },
          IBinJunctor.And
        )
        left.regsRelation = connectSimplify(
          Seq(res.regsRelation, derivedRegsRelation),
          IBinJunctor.And
        )
        Seq(left, right)
      }
    }
    (preImages.filterNot(_.isEmpty).iterator, Seq())
  }

  /** Evaluate the described function; return <code>None</code> if the function is not defined for the given arguments.
    */
  def eval(arguments: Seq[Seq[Int]]): Option[Seq[Int]] =
    Some(arguments(0).dropRight(1) ++ arguments(1))
}
