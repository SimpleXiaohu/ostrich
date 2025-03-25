package ostrich.cesolver.preop.sequence

import ap.parser.ITerm
import ostrich.cesolver.preop.CEPreOp
import ostrich.cesolver.automata.StringSeqAutomaton
import ostrich.cesolver.util.ParikhUtil.ConstInteger
import ostrich.automata.Automaton
import ostrich.cesolver.preop.PreOpUtil.automatonWithLenSeq
import ostrich.cesolver.preop.sequence.SeqLenCEPreOp.seqLengthPreimage

object SeqExtractCEPreOp {
  def apply(offset: ITerm, length: ITerm): SeqExtractCEPreOp = new SeqExtractCEPreOp(offset, length)
}

/** Pre-operator for seq.extract, in the case where the offset and length are constants.
  */
class SeqExtractCEPreOp(off: ITerm, len: ITerm) extends CEPreOp {
  override def toString = "seqExtractCEPreOp"
  def apply(
      argumentConstraints: Seq[Seq[Automaton]],
      resultConstraint: Automaton
  ): (Iterator[Seq[Automaton]], Seq[Seq[Automaton]]) = {
    // FIXME: Not consider edge cases, e.g. offset > length
    val res = resultConstraint.asInstanceOf[StringSeqAutomaton]
    // before offset
    val pre = seqLengthPreimage(off)
    // in the offset
    val in = (seqLengthPreimage(len) & res).asInstanceOf[StringSeqAutomaton]
    // after offset
    val post = StringSeqAutomaton.makeAnySeq()
    (Iterator(Seq(pre ++ in ++ post)), Seq())
  }

  /** Evaluate the described function; return <code>None</code> if the function is not defined for the given arguments.
    */
  def eval(arguments: Seq[Seq[Int]]): Option[Seq[Int]] = {
    val sequence = StringSeqAutomaton.toSeqResult(arguments.head)
    val offset   = arguments(1)(0)
    val length   = arguments(2)(0)
    val subSeq   = sequence.slice(offset, offset + length)
    // the subSeq is like Seq[Seq[a], Seq[b]], we need to output it as #a#b#
    Some(
      subSeq.foldLeft(Seq(StringSeqAutomaton.seqSplitter)) {
        case (splitter, seq) => splitter ++ seq :+ StringSeqAutomaton.seqSplitter
      }
    )
  }
}

