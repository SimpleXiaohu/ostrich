package ostrich.cesolver.preop.sequence

import ostrich.cesolver.preop.CEPreOp
import ostrich.automata.Automaton
import ostrich.cesolver.automata.StringSeqAutomaton
import ap.parser.ITerm
import ap.parser.IExpression
import ap.basetypes.IdealInt
import ostrich.cesolver.util.TermGenerator
import ostrich.cesolver.util.ParikhUtil.ConstInteger
import ostrich.cesolver.preop.PreOpUtil.automatonWithLenSeq
import ostrich.cesolver.preop.PreOpUtil

object SeqLenCEPreOp {

  def seqLengthPreimage(length: ITerm): StringSeqAutomaton = length match {
    case ConstInteger(value) =>
      PreOpUtil.automatonWithLenSeq(value)
    case _: ITerm => {
      // q0 -> (#, 1) -> q0 -> (sigma, 0) -> q0
      val preimage = new StringSeqAutomaton
      val initalState = preimage.initialState
      val acceptedS = preimage.newState
      val lengthTerm = TermGenerator().lenTerm
      preimage.setAccept(initalState, true)
      preimage.setAccept(acceptedS, true)
      preimage.addTransition(
        acceptedS,
        preimage.LabelOps.sigmaLabel,
        acceptedS,
        Seq(0)
      )
      preimage.addSeqElementConnect(
        acceptedS,
        acceptedS,
        Seq(1)
      )
      preimage.addSeqElementConnect(
        initalState,
        acceptedS,
        Seq(1)
      )
      preimage.registers = Seq(lengthTerm)
      preimage.regsRelation = lengthTerm === length
      preimage
    }
  }

  def seqLengthLessThanPreimage(length: ITerm): StringSeqAutomaton = length match {
    case ConstInteger(value) =>
      PreOpUtil.automatonWithLenSeqLessThan(value)
    case _: ITerm => {
      val seqLen = TermGenerator().registerTerm
      val preimage = seqLengthPreimage(seqLen)
      preimage.regsRelation = preimage.regsRelation & (seqLen < length)
      preimage
    }
  }

  def apply(len: ITerm): SeqLenCEPreOp = new SeqLenCEPreOp(len)
}

/** Pre-operator for seq.len
  */
class SeqLenCEPreOp(len: ITerm) extends CEPreOp {

  import SeqLenCEPreOp._
  override def toString = "seqLenCEPreOp"

  def apply(
    argumentConstraints: Seq[Seq[Automaton]],
    resultConstraint: Automaton
  ): (Iterator[Seq[Automaton]], Seq[Seq[Automaton]]) = {
    (Iterator(Seq(seqLengthPreimage(len))), Seq())
  }

  /** Evaluate the described function; return <code>None</code> if the function is not defined for the given arguments.
    */
  def eval(arguments: Seq[Seq[Int]]): Option[Seq[Int]] = {
    val sequence = StringSeqAutomaton.toSeqResult(arguments.head)
    val len = sequence.length
    Some(Seq(len))
  }
}
