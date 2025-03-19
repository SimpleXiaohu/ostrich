package ostrich.cesolver.preop.sequence

import ap.parser.ITerm
import ostrich.cesolver.preop.CEPreOp
import ostrich.cesolver.automata.StringSeqAutomaton
import ostrich.automata.Automaton

object SeqAtCEPreOp {
  // we can reuse the pre-operator of seq.nth since seq.at(a, i) = sequence(seq.nth(a, i))
  def apply(index: ITerm) = new SeqAtCEPreOp(index)
}

/**
  * Pre-operator for seq.at, reuse the pre-operator of seq.nth.
  */
class SeqAtCEPreOp(index: ITerm) extends CEPreOp{
  override def toString(): String = "seqAtCEPreOp"

  val seqNthCEPreOp = SeqNthCEPreOp(index)
  def apply(argumentConstraints: Seq[Seq[Automaton]], resultConstraint: Automaton): (Iterator[Seq[Automaton]], Seq[Seq[Automaton]]) = {
    seqNthCEPreOp.apply(argumentConstraints, resultConstraint)
  }

  def eval(arguments: Seq[Seq[Int]]): Option[Seq[Int]] = seqNthCEPreOp.eval(arguments)
}
