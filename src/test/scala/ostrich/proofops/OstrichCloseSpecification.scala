/**
 * This file is part of Princess, a theorem prover for Presburger
 * arithmetic with uninterpreted predicates.
 * <http://www.philipp.ruemmer.org/princess.shtml>
 *
 * Copyright (C) 2009-2011 Philipp Ruemmer <ph_r@gmx.net>
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 * * Redistributions of source code must retain the above copyright notice, this
 *   list of conditions and the following disclaimer.
 *
 * * Redistributions in binary form must reproduce the above copyright notice,
 *   this list of conditions and the following disclaimer in the documentation
 *   and/or other materials provided with the distribution.
 *
 * * Neither the name of the authors nor the names of their
 *   contributors may be used to endorse or promote products derived from
 *   this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

package ostrich.proofops

import ap.SimpleAPI
import ap.parameters.{GoalSettings, Param}
import ap.parser._
import ap.proof.goal.{AddFactsTask, Goal}
import ap.proof.tree._
import ap.proof.{ConstraintSimplifier, Vocabulary}
import ap.terfor._
import ap.terfor.conjunctions.Conjunction
import ap.util.Debug
import org.scalacheck.Properties
import ostrich.automata.{Automaton, BricsAutomaton}
import ostrich.{OFlags, OstrichStringTheory}

object OstrichCloseSpecification extends Properties("ostrichCloseSpecification"){
  Debug.enableAllAssertions(true)

  val p = SimpleAPI.spawnWithAssertions
  import p._

  private val theory = new OstrichStringTheory (Seq(), OFlags())
  import IExpression._
  import theory._

  addTheory(theory)

  val consts = createConstants("c", 0 until 10, StringSort)

  implicit val to: TermOrder = p.order

  val aut1: Automaton  = BricsAutomaton.fromString("a")
  val aut2: Automaton  = BricsAutomaton.fromString("b")
  val aut3: Automaton  = BricsAutomaton.fromString("c")
  val aut4: Automaton  = aut1 | aut2
  val aut5: Automaton  = aut2 | aut3
  val aut6: Automaton  = aut1 | aut3

  val idAut1: Int = autDatabase.automaton2Id(aut1)
  val idAut2: Int = autDatabase.automaton2Id(aut2)
  val idAut3: Int = autDatabase.automaton2Id(aut3)
  val idAut4: Int = autDatabase.automaton2Id(aut4)
  val idAut5: Int = autDatabase.automaton2Id(aut5)
  val idAut6: Int = autDatabase.automaton2Id(aut6)

  val formula1 = str_in_re_id(consts(1), idAut3)
  val formula2 = str_in_re_id(consts(0), idAut4)
  val formula3 = str_in_re_id(consts(0), idAut5)
  val formula4 = str_in_re_id(consts(0), idAut6)


  val simplifier = ConstraintSimplifier.FAIR_SIMPLIFIER
  val settings =
    Param.CONSTRAINT_SIMPLIFIER.set(GoalSettings.DEFAULT, simplifier)
  val ptf =
    new SimpleProofTreeFactory(true, simplifier)

  def createGoalFor(f : IFormula) : Goal = {
    var goal = Goal(List(asConjunction(!f)), Set(), Vocabulary(to), settings)

    // run the rule applications to turn formulas into facts
    var cont = true
    while (cont && goal.stepPossible) {
      cont = goal.tasks.max match {
          case _ : AddFactsTask => true
          case _ => false
        }
      if (cont)
        goal = (goal step ptf).asInstanceOf[Goal]
    }
 
    goal
  }

  val goal = createGoalFor(formula1 & formula2 & formula3 & formula4)
  //println(goal)

  val closeTest = new OstrichClose(goal, theory, theory.theoryFlags)
  val valueClose = closeTest.isConsistent
  // should be fine to stop the prover again at this point
  p.shutDown

  property("Test Close 1") = {
    // Check the specific regular expression that should be returned
    (valueClose != List())
  }
}
