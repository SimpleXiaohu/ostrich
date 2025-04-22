package ostrich.cesolver.preop.sequence

import scala.collection.mutable.{HashMap => MHashMap, Stack => MStack}
import ostrich.cesolver.preop.CEPreOp
import ostrich.cesolver.automata.CostEnrichedAutomaton
import ostrich.automata.Automaton
import ostrich.cesolver.automata.CETransducer
import ostrich.cesolver.automata.CETransducer._
import ostrich.automata.Transducer._
import ostrich.cesolver.automata.StringSeqAutomaton
import ostrich.cesolver.util.ParikhUtil.{getImage, todo}
import ostrich.cesolver.automata.CETLabelEnumerator
import ostrich.cesolver.util.ParikhUtil.debugPrintln

object MatchAllLeftLongestCEPreOp {
  def apply(pattern: CostEnrichedAutomaton): CEPreOp = {
    val transducer = buildMatchTransducer(pattern)
    new MatchAllLeftLongestCEPreOp(transducer)
  }

  /** Build a transducer that matches the left longest substrings
    */
  private def buildMatchTransducer(
      aut: CostEnrichedAutomaton
  ): CETransducer = {
    todo("MatchAllCEPreOp: not handle empty match in pattern", 3)
    abstract class Mode
    // not matching
    case object NotMatching extends Mode
    // matching, word read so far could reach any state in frontier
    case class Matching(val frontier: Set[aut.State]) extends Mode
    // last transition finished a match and reached frontier
    case class EndMatch(val frontier: Set[aut.State]) extends Mode

    val labelEnumerator = new CETLabelEnumerator(
      aut.transitions.map(_._2)
    )
    val labels          = labelEnumerator.enumDisjointLabelsComplete
    val ceTran          = new CETransducer
    val nop             = OutputOp("", NOP, "")
    val copy            = OutputOp("", Plus(0), "")
    val internal        = OutputOp("", Internal, "")
    val outSeqConnector = OutputOp("", ToSeqConnector, "")

    // TODO: encapsulate this worklist automaton construction

    // states of transducer have current mode and a set of states that
    // should never reach a final state (if they do, a match has been
    // missed)
    val sMap    = new MHashMap[aut.State, (Mode, Set[aut.State])]
    val sMapRev = new MHashMap[(Mode, Set[aut.State]), aut.State]

    // states of new transducer to be constructed
    val worklist = new MStack[aut.State]

    def mapState(s: aut.State, q: (Mode, Set[aut.State])) = {
      sMap += (s    -> q)
      sMapRev += (q -> s)
    }

    // creates and adds to worklist any new states if needed
    def getState(m: Mode, noreach: Set[aut.State]): aut.State =
      sMapRev.getOrElse(
        (m, noreach), {
          val s = ceTran.newState()
          mapState(s, (m, noreach))
          val goodNoreach = !noreach.exists(aut.isAccept(_))
          ceTran.setAccept(
            s,
            m match {
              case NotMatching => goodNoreach
              case EndMatch(_) => goodNoreach
              case Matching(_) => false
            }
          )
          if (goodNoreach)
            worklist.push(s)
          s
        }
      )

    val autInit                  = aut.initialState
    val tranInit                 = ceTran.initialState
    val tranConnectorBeforeMatch = ceTran.newState()

    mapState(tranInit, (NotMatching, Set.empty[aut.State]))
    ceTran.setAccept(tranInit, true)
    worklist.push(tranInit)

    while (!worklist.isEmpty) {
      val ts              = worklist.pop()
      val (mode, noreach) = sMap(ts)

      mode match {
        case NotMatching =>
          for (lbl <- labels) {
            val initImg    = getImage(aut, Set(autInit), lbl)
            val noreachImg = getImage(aut, noreach, lbl)

            val dontMatch = getState(NotMatching, noreachImg ++ initImg)
            debugPrintln("dontMatch: " + dontMatch)
            ceTran.addTransition(ts, lbl, nop, dontMatch)

            if (!initImg.isEmpty) {
              val newMatch = getState(Matching(initImg), noreachImg)
              val newConnectorBeforeMatch = ceTran.newState()
              ceTran.addETransition(ts, outSeqConnector, newConnectorBeforeMatch)
              ceTran.addTransition(newConnectorBeforeMatch, lbl, copy, newMatch)
              debugPrintln("newMatch_init: " + newMatch)
            }

            if (initImg.exists(aut.isAccept(_))) {
              val oneCharMatch = getState(EndMatch(initImg), noreachImg)
              val newConnectorBeforeMatch = ceTran.newState()
              ceTran.addETransition(ts, outSeqConnector, newConnectorBeforeMatch)
              ceTran.addTransition(newConnectorBeforeMatch, lbl, copy, oneCharMatch)
              debugPrintln("oneCharMatch_init: " + oneCharMatch)
            }
          }
        case Matching(frontier) =>
          for (lbl <- labels) {
            val frontImg   = getImage(aut, frontier, lbl)
            val noreachImg = getImage(aut, noreach, lbl)

            if (!frontImg.isEmpty) {
              val contMatch = getState(Matching(frontImg), noreachImg)
              ceTran.addTransition(ts, lbl, copy, contMatch)
            }

            if (frontImg.exists(aut.isAccept(_))) {
              val stopMatch = getState(EndMatch(frontImg), noreachImg)
              ceTran.addTransition(ts, lbl, copy, stopMatch)
            }
          }
        case EndMatch(frontier) =>
          for (lbl <- labels) {
            val initImg    = getImage(aut, Set(autInit), lbl)
            val frontImg   = getImage(aut, frontier, lbl)
            val noreachImg = getImage(aut, noreach, lbl)

            val noMatch = getState(NotMatching, initImg ++ frontImg ++ noreachImg)
            debugPrintln("noMatch: " + noMatch)
            ceTran.addTransition(ts, lbl, nop, noMatch)

            if (!initImg.isEmpty) {
              val newMatch                 = getState(Matching(initImg), frontImg ++ noreachImg)
              val newConnectorBeforeMatch = ceTran.newState()
              ceTran.addETransition(ts, outSeqConnector, newConnectorBeforeMatch)
              ceTran.addTransition(newConnectorBeforeMatch, lbl, copy, newMatch)
              debugPrintln("newMatch: " + newMatch)
            }

            if (initImg.exists(aut.isAccept(_))) {
              val oneCharMatch = getState(EndMatch(initImg), frontImg ++ noreachImg)
              val newConnectorBeforeMatch = ceTran.newState()
              ceTran.addETransition(ts, outSeqConnector, newConnectorBeforeMatch)
              ceTran.addTransition(newConnectorBeforeMatch, lbl, copy, oneCharMatch)
              debugPrintln("oneCharMatch: " + oneCharMatch)
            }
          }
      }
    }
    ceTran.removeDeadStates()
    ceTran.toDot("MatchAllLeftLongestCEPreOp_transducer")
    ceTran
  }
}

class MatchAllLeftLongestCEPreOp(tran: CETransducer) extends CEPreOp {
  override def toString(): String = "MatchAllLeftLongestCEPreOp"

  def apply(
      argumentConstraints: Seq[Seq[Automaton]],
      resultConstraint: Automaton
  ): (Iterator[Seq[Automaton]], Seq[Seq[Automaton]]) = {
    val rc = resultConstraint.asInstanceOf[StringSeqAutomaton]
    (Iterator(Seq(tran.preImage(rc, Seq(), false))), Seq())
  }

  def eval(arguments: Seq[Seq[Int]]): Option[Seq[Int]] =
    for (s <- tran(arguments(0)))
      // always add the seqSplitter in the end
      yield (s :+ StringSeqAutomaton.seqSplitter)
}
