package ostrich.parikh.core

import ap.terfor.Formula
import ap.terfor.Term
import scala.collection.mutable.{HashMap => MHashMap}
import ostrich.parikh.ParikhUtil
import ostrich.parikh.automata.CEBasicOperations
import ostrich.parikh.automata.CostEnrichedAutomatonBase
import ap.terfor.conjunctions.Conjunction
import scala.collection.mutable.ArrayBuffer
import ostrich.OFlags

class UnaryFinalConstraints(
    override val strId: Term,
    override val auts: Seq[CostEnrichedAutomatonBase],
    flags : OFlags
) extends FinalConstraints {
  // the globalS is used to store the state we have explored before
  // to avoid repeated exploration
  private val globalS = ArrayBuffer[Set[(State, Seq[Int])]]()

  // eagerly product
  lazy val productAut = auts.reduce(_ product _)

  lazy val mostlySimplifiedAut = {
    val ceAut = CEBasicOperations.minimizeHopcroftByVec(
      CEBasicOperations.determinateByVec(
        CEBasicOperations.epsilonClosureByVec(
          productAut
        )
      )
    )
    ceAut.removeDuplicatedReg()
    ceAut
  }


  lazy val simplifyButRemainLabelAut = {
    val ceAut = CEBasicOperations.removeUselessTrans(
      CEBasicOperations.minimizeHopcroft(
        productAut
      )
    )
    ceAut.removeDuplicatedReg()
    ceAut
  }
    

  lazy val checkSatAut =
    if (flags.simplifyAut) mostlySimplifiedAut else productAut
  lazy val findModelAut =
    if (flags.simplifyAut) simplifyButRemainLabelAut else productAut

  /**
    * Like Bounded Model Checking(BMC), we find all runs of length less and equal to 
    * bound. If the end state of the run is an accepting state, we compute the registers updates
    * on the run and add them to the formula. 
    * @param bound
    * @return
    */
  def getUnderApprox(bound: Int): Formula = {
    val aut = checkSatAut
    val lowerBound = globalS.size
    computeGlobalSWithRegsValue(bound)
    if (lowerBound == globalS.size) {
      // the globalS does not change
      return Conjunction.FALSE
    }
    val registers = aut.registers

    import ap.terfor.TerForConvenience._
    import ostrich.parikh.TermGeneratorOrder.order

    val r1Formula = disjFor(
      for (
        j <- lowerBound until globalS.size;
        if !globalS(j).isEmpty;
        (s, regVal) <- globalS(j);
        if (aut.isAccept(s))
      ) yield {
        conj(for (i <- 0 until registers.size) yield registers(i) === regVal(i))
      }
    )
    conj(r1Formula, getRegsRelation)
  }

  override lazy val getCompleteLIA: Formula = 
    getCompleteLIA(checkSatAut)

  def getRegsRelation: Formula = checkSatAut.regsRelation

  val interestTerms: Seq[Term] = productAut.registers

  def getModel: Option[Seq[Int]] = {
    val registersModel = MHashMap() ++ interestTermsModel
    ParikhUtil.findAcceptedWordByRegisters(
      Seq(findModelAut),
      registersModel
    )
  }

  if (flags.debug) {
    productAut.toDot("product_" + strId.toString)
    mostlySimplifiedAut.toDot("simplified_" + strId.toString)
    simplifyButRemainLabelAut.toDot("original_" + strId.toString)
  }

  private def computeGlobalSWithRegsValue(
      sLen: Int
  ): Unit = {
    var idx = globalS.size
    checkSatAut.states.zipWithIndex.toMap
    if (idx == 0) {
      val initialRegsVals = Seq.fill(checkSatAut.registers.size)(0)
      globalS += Set((checkSatAut.initialState, initialRegsVals))
      idx += 1
    }
    while (idx < sLen && !globalS(idx - 1).isEmpty) {
      globalS += (for (
        (s, regVal) <- globalS(idx - 1);
        (t, vec) <- succWithVec(checkSatAut, s)
      ) yield {
        (t, addTwoSeq(regVal, vec))
      })
      idx += 1
    }
  }

  private def succWithVec(
      aut: CostEnrichedAutomatonBase,
      s: State
  ): Iterable[(State, Seq[Int])] =
    for ((t, lbl, vec) <- aut.outgoingTransitionsWithVec(s)) yield (t, vec)

  // e.g (1,1) + (1,0) = (2,1)
  private def addTwoSeq(seq1: Seq[Int], seq2: Seq[Int]): Seq[Int] = {
    seq1 zip seq2 map { case (a, b) => a + b }
  }

}
