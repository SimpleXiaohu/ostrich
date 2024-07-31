/**
 * This file is part of Ostrich, an SMT solver for strings.
 * Copyright (c) 2024 Matthew Hague, Philipp Ruemmer. All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 * * Redistributions of source code must retain the above copyright notice, this
 *   list of conditions and the following disclaimer.
 *
 * * Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation
 *   and/or other materials provided with the distribution.
 *
 * * Neither the name of the authors nor the names of their
 *   contributors may be used to endorse or promote products derived from this software without specific prior written permission.
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

import ap.basetypes.IdealInt
import ap.proof.goal.Goal
import ap.proof.theoryPlugins.Plugin
import ap.proof.theoryPlugins.Plugin.AddAxiom
import ap.terfor.conjunctions.Conjunction
import ap.terfor.linearcombination.LinearCombination
import ap.terfor.preds.Atom
import ap.terfor.{RichPredicate, Term}
import ap.theories.{SaturationProcedure, Theory}
import ap.util.Combinatorics.cartesianProduct
import ostrich.OstrichStringFunctionTranslator
import ostrich.OstrichStringTheory
import ostrich.automata.Automaton

/**
 * A SaturationProcedure for forwards propagation.
 *
 * For each x = f(y1,...,yn) collect constraints on y1,...,yn, propagate
 * them forwards through f, and create a new axiom:
 *
 *  assume: <yi constraints> & x = f(y1,...,yn)
 *  derive: x in Post(f, <yi constraints>)
 *
 * For the saturation, the ApplicationPoint is (appTerm,
 * Seq[argConstraint]) where appTerm is a function application as above
 * and the argConstraints are str_in_re_id constraints on y1, ..., yn.
 *
 * Expects str_in_re not to occur, only str_in_re_id.
 */
class ForwardsSaturation(
  val theory : OstrichStringTheory
) extends SaturationProcedure("ForwardsPropagation")
  with PropagationSaturationUtils {
  import theory.{ str_len, str_in_re_id, FunPred }

  /**
   * (funApp, argConstraints)
   * funApp -- x = f(y1, ..., yn)
   * argConstraints -- [l1, ..., ln] where each li is a list of
   * str_in_re_id(yi, autid) or empty list for Sigma* that should be applied
   * to yi.
   */
  type ApplicationPoint = (Atom, Seq[Seq[Atom]])

  override def extractApplicationPoints(
    goal : Goal
  ) : Iterator[ApplicationPoint] = {
    val funApps = getFunApps(goal)
    val termConstraintMap = getInitialConstraints(goal)

    val applicationPoints = for {
      (op, args, res, formula) <- funApps;
      argConSeqs = args.map({
        case None => Seq()
        case Some(a) => {
          termConstraintMap.get(a)
            .map(_.filter(isNotNonZeroLenConstraint).toSeq)
            .getOrElse(Seq())
        }
      });
      argCons <- cartesianProduct(argConSeqs.map(cons =>
        if (cons.isEmpty)
          Seq(Seq())
        else
          cons.map(Seq(_))
      ).toList).toSeq ++ (
        if (argConSeqs.exists(_.size > 1)) Seq(argConSeqs) else Seq()
      )
    } yield (formula, argCons)

    applicationPoints.toIterator
  }

  override def applicationPriority(goal : Goal, p : ApplicationPoint) : Int = {
    p._2.map(
      _.map(a =>
        a.pred match {
          case `str_in_re_id` =>
            getAutomatonSize(decodeRegexId(a, false))
          // will be a str_len == 0 as we only return those
          // PR: this case should never occur, the OstrichReducer will
          // replace any atom str_len(x) == 0 with x == ""!
          case FunPred(`str_len`) if a(1).isZero => 1
          // will not happen
          case _ => 0
        }
      ).sum
    ).sum
  }

  override def handleApplicationPoint(
    goal : Goal, appPoint : ApplicationPoint
  ) : Seq[Plugin.Action] = {
    // return empty if appPoint no longer relevant
    if (!extractApplicationPoints(goal).contains(appPoint))
      return List()

    val stringFunctionTranslator =
        new OstrichStringFunctionTranslator(theory, goal.facts)
    val str_in_re_id_app = new RichPredicate(str_in_re_id, goal.order)

    val (funApp, argCons) = appPoint
    val (op, args, res, formula)
      = getFunApp(stringFunctionTranslator, funApp) match {
          case Some(app) => app
          case None =>
            throw new Exception(
              "Expected a funApp in the ApplicationPoint " + appPoint
            )
        }

    val argAuts = (args zip argCons).map({
      case (None, _) => Seq(autDatabase.anyStringAut)
      case (Some(arg), cons)
        => if (cons.isEmpty)
          Seq(atomConstraintToAut(arg, None))
        else
          cons.map(c => atomConstraintToAut(arg, Some(c)))
    })
    val resultConstraint = op.forwardApprox(argAuts);
    val autId = autDatabase.automaton2Id(resultConstraint);
    val lres = LinearCombination(res, goal.order);
    val lautId = LinearCombination(IdealInt(autId));
    val assumptions = List(formula) ++ argCons.flatten

    logSaturation("forward propagation") {
      Seq(AddAxiom(
        assumptions,
        Conjunction.conj(str_in_re_id_app(Seq(lres, lautId)), goal.order),
        theory
      ))
    }
  }

  override def isSoundForSat(
    theories : Seq[Theory],
    config : Theory.SatSoundnessConfig.Value) : Boolean = true
}
