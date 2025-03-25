package ostrich.cesolver.preop.sequence

import ostrich.cesolver.automata.StringSeqAutomaton.toSeqResult
import ostrich.automata.Automaton
import ostrich.cesolver.preop.CEPreOp
import ostrich.cesolver.automata.StringSeqAutomaton
import ostrich.cesolver.preop.ReplaceAllCEPreOp
import ostrich.cesolver.automata.CostEnrichedAutomaton
import ostrich.cesolver.util.ParikhUtil.partition

object JoinCEPreOp {
  def apply(connector: String): JoinCEPreOp = {
    new JoinCEPreOp(connector)
  }
}

/**
  * Pre-operator for join constraint.
  */
class JoinCEPreOp(connector: String) extends CEPreOp {

  override def toString = "joinCEPreOp_" + '"' + connector + '"'

  def apply(
      argumentConstraints: Seq[Seq[Automaton]],
      resultConstraint: Automaton
  ): (Iterator[Seq[Automaton]], Seq[Seq[Automaton]]) = {
    val res       = resultConstraint.asInstanceOf[CostEnrichedAutomaton]
    val argAut = new StringSeqAutomaton
    val emptyUpdate = Seq.fill(res.registers.length)(0)
    val old2new = res.states.map(s => s -> argAut.newState).toMap
    for ((s, l, t, v) <- res.transitions) {
      argAut.addTransition(old2new(s), l, old2new(t), v)
    }
    for ((s,t,v) <- partition(res, connector.toCharArray())) {
      argAut.addSeqElementConnect(old2new(s), old2new(t), v)
    }
    for (s <- res.acceptingStates) {
      argAut.setAccept(old2new(s), true)
    }
    argAut.addSeqElementConnect(argAut.initialState, old2new(res.initialState), emptyUpdate)
    argAut.registers = res.registers
    argAut.regsRelation = res.regsRelation
    argAut.toDot("joinCEPreOp_" + '"' + connector + '"')
    (Iterator(Seq(argAut)), Seq())
  }
  /** Evaluate the described function; return <code>None</code> if the function is not defined for the given arguments.
    */
  def eval(arguments: Seq[Seq[Int]]): Option[Seq[Int]] = {
    val argSeq = toSeqResult(arguments.head)
    val connectorlist = connector.toCharArray().map(_.toInt)
    var resSeq = Seq[Int]()
    var first = true
    for (i <- argSeq) {
      if (first) {
        resSeq = i
        first = false
      } else {
        resSeq = resSeq ++ connectorlist ++ i
      }
    }
    return Some(resSeq)
  }
}