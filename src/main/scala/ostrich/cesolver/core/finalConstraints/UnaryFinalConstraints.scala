/** This file is part of Ostrich, an SMT solver for strings. Copyright (c) 2023
  * Denghang Hu. All rights reserved.
  *
  * Redistribution and use in source and binary forms, with or without
  * modification, are permitted provided that the following conditions are met:
  *
  * * Redistributions of source code must retain the above copyright notice,
  * this list of conditions and the following disclaimer.
  *
  * * Redistributions in binary form must reproduce the above copyright notice,
  * this list of conditions and the following disclaimer in the documentation
  * and/or other materials provided with the distribution.
  *
  * * Neither the name of the authors nor the names of their contributors may be
  * used to endorse or promote products derived from this software without
  * specific prior written permission.
  *
  * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
  * ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
  * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
  * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
  * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
  * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
  * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
  * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  * POSSIBILITY OF SUCH DAMAGE.
  */
package ostrich.cesolver.core.finalConstraints

import ostrich.cesolver.util.ParikhUtil
import ostrich.cesolver.automata.CEBasicOperations
import ostrich.cesolver.automata.CostEnrichedAutomatonBase
import ostrich.cesolver.automata.CostEnrichedAutomaton
import ostrich.OFlags
import ap.parser.ITerm
import ap.parser.IFormula
import ap.parser.IExpression._
import ap.parser.IBinJunctor
import ap.api.PartialModel
import ap.basetypes.IdealInt
import ostrich.cesolver.automata.VectorAutomatonWrapper
import ostrich.automata.AutomataUtils.findAcceptedWord

class UnaryFinalConstraints(
    strDataBaseId: ITerm,
    auts: Seq[CostEnrichedAutomatonBase],
    flags: OFlags
) extends BaselineFinalConstraints(strDataBaseId, auts, flags) {

  lazy val hasRegister: Boolean = auts.exists(_.registers.nonEmpty)

  private val productAut = {
    auts.reduce((a1,a2) => (a1 & a2).asInstanceOf[CostEnrichedAutomatonBase])
  }

  private lazy val findModelAut = productAut  // TODO: remove duplicated transitions 

  private lazy val checkSatAut =
    if (!flags.simplifyAut) productAut
    else if (hasRegister) {
      VectorAutomatonWrapper(productAut)
    } else {
      // if there is no registers, we do not generate LIA to check sat. Not used
      null
    }

  // if (ParikhUtil.debugOpt) {
  //   // checkSatAut.toDot(strDataBaseId + "_checkSatAut")
  //   findModelAut.toDot(strDataBaseId + "_findModelAut")
  // }

  override lazy val getCompleteLIA: IFormula =
    if (!hasRegister) {
      findModelAut.regsRelation
    } else {
      checkSatAut.emptinessCheckFormula
    }

  override def getModel(partialModel: PartialModel): Option[Seq[Int]] = {
    ParikhUtil.log("Get model of string term " + strDataBaseId)
    if (!hasRegister) findModelAut.getAcceptedWord
    else {
      var registersModel = Map[ITerm, Int]()
      for (term <- auts.flatMap(_.registers))
        registersModel += (term -> FinalConstraints.evalTerm(
          term,
          partialModel
        ))
      val res = findModelAut.getAcceptedWordByRegisters(registersModel)
      ParikhUtil.log(s"The model of ${strDataBaseId} is generated : ${res}")
      res
    }
  }
}
