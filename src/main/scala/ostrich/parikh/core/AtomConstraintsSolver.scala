package ostrich.parikh.core

import ap.terfor.conjunctions.Conjunction
import ap.api.SimpleAPI
import ap.api.SimpleAPI.ProverStatus
import ap.parser.SymbolCollector
import ap.parser.Internal2InputAbsy
import ap.terfor.TerForConvenience._
import ostrich.parikh.TermGeneratorOrder.order
import ostrich.parikh.automata.CostEnrichedAutomatonTrait
import AtomConstraints._
import ap.terfor.Term
import ap.terfor.Formula
import ostrich.parikh.Config._
import ap.basetypes.IdealInt

object AtomConstraintsSolver {
  var initialLIA: Formula = Conjunction.TRUE

}

class Result {
  protected var status = ProverStatus.Unknown

  private val model = new OstrichModel

  def setStatus(s: ProverStatus.Value): Unit = status = s

  def getStatus = status

  def updateModel(t: Term, v: IdealInt): Unit = model.update(t, v)

  def updateModel(t: Term, v: Seq[Int]): Unit = model.update(t, v)
  
  def getModel = model.getModel
}

import AtomConstraintsSolver._

trait AtomConstraintsSolver {

  protected var constraints: Seq[AtomConstraints] = Seq()

  protected var interestTerms: Set[Term] = Set()

  def setInterestTerm(terms: Set[Term]): Unit = interestTerms = terms

  def addConstraint(constraint: AtomConstraints): Unit =
    constraints ++= Seq(constraint)

  def solve: Result

}

class LinearAbstractionSolver extends AtomConstraintsSolver {

  def addConstraint(t: Term, auts: Seq[CostEnrichedAutomatonTrait]): Unit = {

    val constraint = lengthAbsStrategy match {
      case Unary()  => unaryHeuristicACs(t, auts)
      case Parikh() => parikhACs(t, auts)
    }

    super.addConstraint(constraint)
  }

  def solve: Result = {
    // Sometimes computation of linear abstraction is very expensive
    // So we thy to find a model with less constraints(over-approximation) first
    // Improve me !! (maybe currently compute approximation and linear abstraction)
    val approxRes = solveOverApprox
    approxRes.getStatus match {
      case ProverStatus.Sat => approxRes
      case _                => solveLinearAbs
    }
  }

  def solveOverApprox: Result = solveFixedFormula(
    conj(constraints.map(_.getOverApprox))
  )

  def solveLinearAbs: Result = solveFixedFormula(
    conj(constraints.map(_.getLinearAbs))
  )

  def solveFixedFormula(f: Formula): Result = {
    import AtomConstraints.evalTerm
    val res = new Result
    SimpleAPI.withProver { p =>
      p setConstructProofs true
      val regsRelation = conj(constraints.map(_.getRegsRelation))
      val finalArith = conj(f, initialLIA, regsRelation)
      p addConstantsRaw SymbolCollector.constants(
        Internal2InputAbsy(finalArith)
      )
      p addAssertion finalArith
      p.??? match {
        case ProverStatus.Sat =>
          val partialModel = p.partialModel
          // update string model
          for (singleString <- constraints) {
            singleString.setInterestTermModel(partialModel)
            val value = singleString.getModel
            res.updateModel(singleString.strId, value)
          }
          // update integer model
          for (term <- interestTerms) {
            val value = evalTerm(term, partialModel)
            res.updateModel(term, value)
          }

          res.setStatus(ProverStatus.Sat)
        case _ => res.setStatus(_)
      }
    }
    res
  }

}
