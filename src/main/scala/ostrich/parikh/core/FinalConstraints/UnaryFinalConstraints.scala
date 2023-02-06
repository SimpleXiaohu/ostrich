package ostrich.parikh.core

import ap.terfor.Formula
import ostrich.parikh.automata.CostEnrichedAutomaton
import ap.terfor.Term
import ap.terfor.TerForConvenience._
import ostrich.parikh.TermGeneratorOrder.order
import ap.api.PartialModel
import ap.basetypes.IdealInt
import ap.terfor.ConstantTerm
import ap.terfor.OneTerm
import ap.terfor.linearcombination.LinearCombination
import scala.collection.mutable.{HashMap => MHashMap}
import ostrich.parikh.ParikhUtil
import ap.types.SortedConstantTerm
import ostrich.parikh.OstrichConfig
import ostrich.parikh.automata.CEBasicOperations
import ap.terfor.conjunctions.Conjunction
import shapeless.Fin
import ostrich.parikh.automata.CostEnrichedAutomatonTrait
import FinalConstraints._

class UnaryFinalConstraints(
    override val strId: Term,
    override val atoms: Seq[AtomConstraint]
) extends FinalConstraints {

  // eagerly product
  lazy val productAtom: AtomConstraint = {
    val productAut = getAutomata.reduce(_ product _)
    new UnaryHeuristicAC(productAut)
  }

  lazy val mostlySimplifiedAut = {
    val res = 
    CEBasicOperations.minimizeHopcroftByVec(
      CEBasicOperations.determinateByVec(
        CEBasicOperations.epsilonClosureByVec(
          productAtom.aut
        )
      )
    )
    res
  }

  lazy val simplifyButRemainLabelAut =
        CEBasicOperations.removeUselessTrans(
          CEBasicOperations.minimizeHopcroft(
            productAtom.aut
          )
        )

  def getUnderApprox(bound: Int): Formula =
    new UnaryHeuristicAC(mostlySimplifiedAut).getUnderApprox(bound)

  def getOverApprox: Formula =
    new UnaryHeuristicAC(mostlySimplifiedAut).getOverApprox

  def getCompleteLIA: Formula =
    new UnaryHeuristicAC(mostlySimplifiedAut).getCompleteLIA

  def getRegsRelation: Formula =
    new UnaryHeuristicAC(mostlySimplifiedAut).getRegsRelation

  val interestTerms: Seq[Term] = productAtom.aut.getRegisters

  def getModel: Option[Seq[Int]] = {
    val registersModel = MHashMap() ++ interestTermsModel
    ParikhUtil.findAcceptedWordByRegisters(
      Seq(simplifyButRemainLabelAut),
      registersModel
    )
  }

  if (OstrichConfig.outputdot) {
    mostlySimplifiedAut.toDot("simplified_" + strId.toString)
    simplifyButRemainLabelAut.toDot("original_" + strId.toString)
  }

}