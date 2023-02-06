package ostrich.parikh.core

import ap.terfor.conjunctions.Conjunction
import ap.api.SimpleAPI
import ap.api.SimpleAPI.ProverStatus
import ap.parser.SymbolCollector
import ap.terfor.TerForConvenience._
import ostrich.parikh.CostEnrichedConvenience._
import ostrich.parikh.TermGeneratorOrder.order
import ostrich.parikh.automata.CostEnrichedAutomaton
import FinalConstraints._
import ap.terfor.Term
import ap.terfor.Formula
import ostrich.parikh.OstrichConfig._
import ap.basetypes.IdealInt
import ostrich.parikh.writer.CatraWriter
import uuverifiers.catra.CommandLineOptions
import scala.io.Source
import uuverifiers.catra.InputFileParser
import fastparse.Parsed
import uuverifiers.catra.{Invalid, Valid}
import scala.util.Failure
import uuverifiers.catra.SolveRegisterAutomata.runInstance
import scala.util.Try
import uuverifiers.catra.{Result => CatraResult}
import uuverifiers.catra.ChooseLazy
import uuverifiers.catra.SolveSatisfy
import scala.util.Success
import uuverifiers.catra.Sat
import uuverifiers.catra.OutOfMemory
import uuverifiers.catra.Timeout
import uuverifiers.catra.Unsat
import ap.terfor.ConstantTerm
import ap.terfor.linearcombination.LinearCombination
import ostrich.parikh.ParikhUtil.measure
import ap.parameters.Param
import ostrich.OstrichMain
import ostrich.parikh.util.TimeoutException
import ostrich.OFlags
import ostrich.parikh.ParikhExploration.Approx
import ostrich.parikh.util.UnknownException
import ostrich.parikh.automata.CostEnrichedAutomatonTrait

class UnaryBasedSolver extends FinalConstraintsSolver[UnaryFinalConstraints] {
  def addConstraint(t: Term, auts: Seq[CostEnrichedAutomatonTrait]): Unit = {
    addConstraint(unaryHeuristicACs(t, auts))
  }

  def solve: Result = {
    var res = solveUnderApprox
    if (!res.isSat){
      // try res = solveOverApprox 
      // catch {
      //   case e: UnknownException => res = solveCompleteLIA
      // }
      res = solveCompleteLIA
    }
    res
  }

  def solveUnderApprox: Result = {
    // add bound iterately
    val maxBound = 20
    val step = 5
    var nowBound = 5
    var result = new Result
    while (nowBound < maxBound && !result.isSat) {
      result = solveFormula(
        conj(constraints.map(_.getUnderApprox(nowBound)))
      )
      nowBound += step
    }
    result
  }

  def solveOverApprox: Result = solveFormula(
    conj(constraints.map(_.getOverApprox))
  )

  def solveCompleteLIA: Result = solveFormula(
    conj(constraints.map(_.getCompleteLIA))
  )

  def solveFormula(f: Formula): Result = {
    import FinalConstraints.evalTerm
    val res = new Result
    SimpleAPI.withProver { p =>
      p setConstructProofs true
      val regsRelation = conj(constraints.map(_.getRegsRelation))
      val inputAndGenerated = FinalConstraints()
      val finalArith = conj(f, regsRelation, inputAndGenerated)

      val constants =
        SymbolCollector.constants(finalArith) ++ integerTerms

      p addConstants order.orderedConstants

      // We must treat TermGenerator.order carefully. 
      // Note that finalArith.order == TermGenerator.order 
      // because TermGenerator.order is the implicit order
      // The call addAssertion will fail some asserttion 
      // if the TermGenerator is extended with too many constants. 
      // (run ostrich with +assert option)
      p !! finalArith
      val status = measure(
        s"${this.getClass.getSimpleName}::solveFixedFormula::findIntegerModel"
      ) {
        p.???
      }
      status match {
        case ProverStatus.Sat =>
          val partialModel = p.partialModel
          // update string model
          for (singleString <- constraints) {
            singleString.setInterestTermModel(partialModel)
            val value = measure(
              s"${this.getClass.getSimpleName}::findStringModel"
            )(singleString.getModel)
            value match {
              case Some(v) => res.updateModel(singleString.strId, v)
              case None    => throw UnknownException("Cannot find string model")
            }

          }
          // update integer model
          for (term <- integerTerms) {
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