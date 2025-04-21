package ostrich.cesolver.preop.sequence

import ap.parser.ITerm
import ostrich.cesolver.preop.CEPreOp
import ostrich.cesolver.automata.StringSeqAutomaton
import ostrich.automata.Automaton
import ostrich.cesolver.automata.CostEnrichedAutomaton

object SeqAtCEPreOp {
  // we can reuse the pre-operator of seq.nth since seq.at(a, i) = sequence(seq.nth(a, i))
  def apply(index: ITerm) = new SeqAtCEPreOp(index)
}

/**
  * Pre-operator for seq.at, reuse the pre-operator of seq.nth.
  */
class SeqAtCEPreOp(index: ITerm) extends CEPreOp{
  override def toString(): String = "seqAtCEPreOp"

  private val seqNthCEPreOp = SeqNthCEPreOp(index)
  def apply(argumentConstraints: Seq[Seq[Automaton]], resultConstraint: Automaton): (Iterator[Seq[Automaton]], Seq[Seq[Automaton]]) = {
    // convert the result sequence to a string, i.e., ["a"] to "a"
    val res = resultConstraint.asInstanceOf[StringSeqAutomaton]
    val stringRes = new CostEnrichedAutomaton
    val old2new = res.states.map(s => (s, stringRes.newState())).toMap
    for ((s, _) <- res.outgoingTransitionsWithoutLabel(res.initialState)){
      stringRes.initialState = old2new(s)
    }
    for ((s, l, t, v) <- res.transitions) {
      stringRes.addTransition(old2new(s), l, old2new(t), v)
    }
    for (s <- res.acceptingStates) {
      stringRes.setAccept(old2new(s), true)
    }
    seqNthCEPreOp.apply(argumentConstraints, stringRes)
  }

  def eval(arguments: Seq[Seq[Int]]): Option[Seq[Int]] = seqNthCEPreOp.eval(arguments) match {
    case None => None
    case Some(str) =>
      // convert the string to a sequence, i.e., "a" to ["a"]
      val splitter = StringSeqAutomaton.seqSplitter
      Some(splitter +: str :+ splitter) 
  }
}
