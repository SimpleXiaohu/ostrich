/**
 * This file is part of Ostrich, an SMT solver for strings.
 * Copyright (c) 2024 Oliver Markgraf, Matthew Hague, Philipp Ruemmer.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 * * Redistributions of source code must retain the above copyright
 *   notice, this list of conditions and the following disclaimer.
 *
 * * Redistributions in binary form must reproduce the above copyright
 *   notice, this list of conditions and the following disclaimer in the
 *   documentation and/or other materials provided with the distribution.
 *
 * * Neither the name of the authors nor the names of their contributors
 *   may be used to endorse or promote products derived from this software
 *   without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 * FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 * COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT,
 * INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
 * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED
 * OF THE POSSIBILITY OF SUCH DAMAGE.
 */

package ostrich.proofops

import ap.parameters.{GoalSettings, Param}
import ap.parser._
import ap.proof.goal.{AddFactsTask, Goal}
import ap.proof.theoryPlugins.Plugin
import ap.proof.theoryPlugins.Plugin.Action
import ap.proof.theoryPlugins.Plugin.AxiomSplit
import ap.proof.tree._
import ap.proof.{ConstraintSimplifier, Vocabulary}
import ap.terfor._
import ap.terfor.conjunctions.Conjunction
import ap.terfor.linearcombination.LinearCombination
import ap.util.Debug
import org.scalacheck.Properties
import ostrich.automata.{Automaton, BricsAutomaton}
import ostrich.{OFlags, OstrichStringTheory}

object BackwardsSaturationSpecification
  extends Properties("BackwardsSaturationSpecification")
          with TestProverUtils {

  import prover._
  import IExpression._
  import theory._

  val x = createConstant("x", StringSort)
  val y = createConstant("y", StringSort)
  val z = createConstant("z", StringSort)

  val autA: Automaton  = BricsAutomaton.fromString("a")
  val autB: Automaton  = BricsAutomaton.fromString("b")
  val autAorB: Automaton  = autA | autB
  val autABCstar: Automaton  = BricsAutomaton("(a|b|c)*")
  val autABThenCstar: Automaton  = BricsAutomaton("abc*")

  val idAutA: Int = autDatabase.automaton2Id(autA)
  val idAutB: Int = autDatabase.automaton2Id(autB)
  val idAutAorB: Int = autDatabase.automaton2Id(autAorB)
  val idAutABCstar: Int = autDatabase.automaton2Id(autABCstar)
  val idAutABThenCstar: Int = autDatabase.automaton2Id(autABThenCstar)

  val formulaYinAorB = str_in_re_id(y, idAutAorB)
  val formulaYinABCstar = str_in_re_id(y, idAutABCstar)
  val formulaYinABThenCstar = str_in_re_id(y, idAutABThenCstar)
  val formulaYreplaceX = y === str_replaceall(x, "a", "d")
  val formulaZreplaceX = z === str_replaceall(x, "b", "c")

  val bwdsSat = new BackwardsSaturation(theory)

  val (
    appPointsSimpleReplace,
    prioritiesSimpleReplace,
    appliedSimpleReplace
  ) = getSaturationDataFor(bwdsSat, formulaYinAorB & formulaYreplaceX)

  val (
    appPointsReplaceTwoXCons,
    prioritiesReplaceTwoXCons,
    appliedReplaceTwoXCons
  ) = getSaturationDataFor(
    bwdsSat,
    formulaYinABThenCstar & formulaYinABCstar & formulaYreplaceX
  )

  val (
    appPointsTwoFuns,
    prioritiesTwoFuns,
    appliedTwoFuns
  ) = getSaturationDataFor(
    bwdsSat,
    formulaYinABThenCstar & formulaYinABCstar
      & formulaYreplaceX & formulaZreplaceX
  )

  // should be fine to stop the prover again at this point
  shutdown

  val iYinAorB = makeInternal(formulaYinAorB)
  val iYinABCstar = makeInternal(formulaYinABCstar)
  val iYinABThenCstar = makeInternal(formulaYinABThenCstar)
  val iYreplaceX = makeReplaceAll(x, "a", "d", y)
  val iZreplaceX = makeReplaceAll(x, "b", "c", z)

  property("Test Simple Replace App Points") = {
    appPointsSimpleReplace == List((iYreplaceX, Some(iYinAorB)))
  }

  property("Test Simple Replace Priorities") = {
    // TODO: check
    prioritiesSimpleReplace == List(3)
  }

  property("Test Simple Replace Applied") = {
    appliedSimpleReplace.exists(_ match {
      case Seq(AxiomSplit(
        assumptions, (c1, List()) #:: (c2, List()) #:: Stream.Empty, _
      ))
        // TODO: complete test of constraints
        // c2 is about one of the strings -- that should be removed
        // somehow
        if assumptions.toSet == Set(iYinAorB, iYreplaceX)
          && isSplitCases(
            Seq(c1, c2),
            Seq(
              (x, List("b"), List("a", "d", "bb")),
              // d in Sigma*..
              (strDatabase.str2Id("d"), List("a", "bc", "xyz"), List())
            )
          ) => true
      case _ =>
        false
    })
  }

  /**
   * Test cases of  AxiomSplit are as expected
   *
   * Each conjunction in cases should pass at least one test in tests.
   * Careful, several conjunctions may end pass the same test.
   *
   * @param cases the conjunction for each case
   * @param tests tuple of (term, positiveEgs, negativeEgs) for each
   * str_in_re_id constraint that the conjunction should enforce. See
   * isCorrectRegex.
   */
  def isSplitCases(
    cases : Seq[Conjunction],
    tests : Seq[(ITerm, Seq[String], Seq[String])]
  ) : Boolean = {
    cases.forall(conj =>
      tests.exists({ case (term, pos, neg) =>
        isCorrectRegex(conj, term, pos, neg)
      })
    )
  }

//  property("Test Two X Constraints App Points") = {
//    appPointsReplaceTwoXCons.toSet == Set(
//      (iYreplaceX, List(Some(iXinABThenCstar), None)),
//      (iYreplaceX, List(Some(iXinABCstar), None))
//    )
//  }
//
//  property("Test Two X Constraints Priorities") = {
//    prioritiesReplaceTwoXCons.toSet == Set(2, 4)
//  }
//
//  property("Test Two X Constraints Applied") = {
//    appliedReplaceTwoXCons.exists(_ match {
//      case Seq(AddAxiom(assumptions, SingleAtom(newConstraint), _))
//        if assumptions.toSet == Set(iXinABCstar, iYreplaceX) &&
//           isCorrectRegex(
//             newConstraint, y,
//             List("db", "dbcccc"), List("ab", "abccc", "da")
//           ) => true
//      case _ =>
//        false
//    }) && appliedReplaceTwoXCons.exists(_ match {
//      case Seq(AddAxiom(assumptions, SingleAtom(newConstraint), _))
//        if assumptions.toSet == Set(iXinABThenCstar, iYreplaceX) &&
//           isCorrectRegex(
//             newConstraint, y,
//             List("db", "dbcccc"), List("ab", "abccc", "dd")
//           ) => true
//      case _ =>
//        false
//    })
//  }
//
//  property("Test Two Fun Apps App Points") = {
//    appPointsTwoFuns.toSet == Set(
//      (iYreplaceX, List(Some(iXinABCstar), None)),
//      (iYreplaceX, List(Some(iXinABThenCstar), None)),
//      (iZreplaceX, List(Some(iXinABCstar), None)),
//      (iZreplaceX, List(Some(iXinABThenCstar), None))
//    )
//  }
//
//  property("Test Two Fun Apps Priorities") = {
//    prioritiesTwoFuns.toSet == Set(2, 4)
//  }
//
//  property("Test Two Fun Apps") = {
//    appliedTwoFuns.exists(_ match {
//      case Seq(AddAxiom(assumptions, SingleAtom(newConstraint), _))
//        if assumptions.toSet == Set(iXinABCstar, iYreplaceX) &&
//           isCorrectRegex(
//             newConstraint, y,
//             List("db", "dbcccc"), List("ab", "abccc", "da")
//           ) => true
//      case _ =>
//        false
//    }) && appliedTwoFuns.exists(_ match {
//      case Seq(AddAxiom(assumptions, SingleAtom(newConstraint), _))
//        if assumptions.toSet == Set(iXinABThenCstar, iYreplaceX) &&
//           isCorrectRegex(
//             newConstraint, y,
//             List("db", "dbcccc"), List("ab", "abccc", "dd")
//           ) => true
//      case _ =>
//        false
//    }) && appliedTwoFuns.exists(_ match {
//      case Seq(AddAxiom(assumptions, SingleAtom(newConstraint), _))
//        if assumptions.toSet == Set(iXinABCstar, iZreplaceX) &&
//           isCorrectRegex(
//             newConstraint, z,
//             List("ac", "accccc"), List("ab", "abccc", "bc")
//           ) => true
//      case _ =>
//        false
//    }) && appliedTwoFuns.exists(_ match {
//      case Seq(AddAxiom(assumptions, SingleAtom(newConstraint), _))
//        if assumptions.toSet == Set(iXinABThenCstar, iZreplaceX) &&
//           isCorrectRegex(
//             newConstraint, z,
//             List("ac", "accccc", "acc"), List("ab", "abccc", "cb")
//           ) => true
//      case _ =>
//        false
//    })
//  }
}