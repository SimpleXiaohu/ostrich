package ostrich.cesolver.preop.sequence

import ostrich.cesolver.preop.CEPreOp
import ostrich.automata.Automaton
import ostrich.cesolver.automata.StringSeqAutomaton

trait SeqLenCEPreOpBase extends CEPreOp {
  override def toString = "seqLenCEPreOp"
}

// Pre-operator for seq.len, in the case where the length is a constant.
class SeqLenCEPreOpConcrete(len: Int) extends SeqLenCEPreOpBase {
  def apply(
      argumentConstraints: Seq[Seq[Automaton]],
      resultConstraint: Automaton
  ): (Iterator[Seq[Automaton]], Seq[Seq[Automaton]]) = {
    val sigmaLabel = (Char.MinValue, Char.MaxValue)
    val emptyUpdate = Seq()
    val argAut = new StringSeqAutomaton
    // the sequence elements before the length
    (Iterator(Seq(argAut)), Seq())
  }

  def eval(arguments: Seq[Seq[Int]]): Option[Seq[Int]] = None
}