package ostrich.cesolver.preop.sequence

import ostrich.cesolver.automata.CostEnrichedAutomaton
import ostrich.cesolver.automata.CETransducer
import ostrich.cesolver.automata.CETransducer._
import ostrich.cesolver.preop.CEPreOp
import ostrich.automata.Automaton
import ostrich.cesolver.automata.StringSeqAutomaton
import ostrich.cesolver.util.ParikhUtil
import ostrich.cesolver.automata.CETLabelEnumerator
import ostrich.automata.Transducer._
import scala.collection.mutable.{ArrayStack => MStack, HashMap => MHashMap}
import ostrich.automata.BricsTLabelOps.sigmaLabel
import ParikhUtil.getImage
import ostrich.automata.BricsTLabelOps
import ostrich.cesolver.automata.CEBasicOperations


object SeqFilterCEPreOp {
  def apply(pattern: CostEnrichedAutomaton) : CEPreOp = {
    val transducer = buildFilterTransducer(pattern)
    new SeqFilterCEPreOp(transducer)
  }

  /**
    * Build a transducer that returns a sequence of all elements that are matched by the pattern
    */
  private def buildFilterTransducer(aut: CostEnrichedAutomaton): CETransducer = {

    val ceTran = new CETransducer
    val nop = OutputOp("", NOP, "")
    val copy = OutputOp("", Plus(0), "")
    val outConnector = OutputOp("", ToSeqConnector, "")

    val notMatch = ceTran.newState
    ceTran.initialState = notMatch
    val beginMatch = ceTran.newState
    val failedMatch = ceTran.newState
    val compAut = CEBasicOperations.complementWithoutRegs(aut)
    val old2newMatch = aut.states.map(s => s -> ceTran.newState).toMap
    val old2newNotMatch = compAut.states.map(s => s -> ceTran.newState).toMap

    val sigmaLabel = BricsTLabelOps.sigmaLabel
    val labelEnumerator = new CETLabelEnumerator(aut.transitions.map(_._2))
    val completeLabels = labelEnumerator.enumDisjointLabelsComplete
    ceTran.setAccept(notMatch, true)
    // notMatch --> sigma --> notMatch
    ceTran.addTransition(notMatch, sigmaLabel, nop, notMatch)        
    // notMatch --> # --> beginMatch | failedMatch
    ceTran.addCTransition(notMatch, outConnector, beginMatch)
    ceTran.addCTransition(notMatch, nop, failedMatch)
    // nondeterministicly choose to match or not match
    ceTran.addETransition(beginMatch, nop, old2newMatch(aut.initialState))
    ceTran.addETransition(failedMatch, nop, old2newNotMatch(compAut.initialState))
    // successful match
    for ((s, l, t, _) <- aut.transitions) {
        ceTran.addTransition(old2newMatch(s), l, copy, old2newMatch(t))
    }
    for (s <- aut.acceptingStates) {
      ceTran.setAccept(old2newMatch(s), true)  
      // match again
      ceTran.addCTransition(old2newMatch(s), outConnector, beginMatch)
      ceTran.addCTransition(old2newMatch(s), nop, failedMatch)
    }
    // failed match
    for ((s,l,t, _) <- compAut.transitions) {
      ceTran.addTransition(old2newNotMatch(s), l, nop, old2newNotMatch(t))
    }
    for (s <- compAut.acceptingStates) {
      ceTran.setAccept(old2newNotMatch(s), true)
      // match again
      ceTran.addCTransition(old2newNotMatch(s), outConnector, beginMatch)
      ceTran.addCTransition(old2newNotMatch(s), nop, failedMatch)
    }
    
    ceTran.toDot("seqfilterTran")
    aut.toDot("seqfilterTran_pattern")
    ceTran
  }
}

class SeqFilterCEPreOp(tran: CETransducer) extends CEPreOp {
  override def toString(): String = "SeqFilterCEPreOp"

  def apply(argumentConstraints: Seq[Seq[Automaton]], resultConstraint: Automaton): (Iterator[Seq[Automaton]], Seq[Seq[Automaton]]) = {
    val rc = resultConstraint.asInstanceOf[StringSeqAutomaton]
    val preImage = tran.preImage(rc, Seq(), true)
    preImage.toDot("seqfilter_preimage")
    (Iterator(Seq(preImage)), Seq())
  }

  def eval(arguments: Seq[Seq[Int]]): Option[Seq[Int]] = {
    for (s <- tran(arguments(0)))
      yield s :+ StringSeqAutomaton.seqSplitter
  }
}