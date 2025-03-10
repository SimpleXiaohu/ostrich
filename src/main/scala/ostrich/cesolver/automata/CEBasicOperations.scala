/**
 * This file is part of Ostrich, an SMT solver for strings.
 * Copyright (c) 2023 Denghang Hu. All rights reserved.
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

package ostrich.cesolver.automata

import dk.brics.automaton.{BasicOperations, State, Automaton => BAutomaton}
import scala.collection.mutable.{
  HashMap => MHashMap,
  HashSet => MHashSet,
  Stack => MStack,
  ArrayBuffer,
  ArrayStack
}
import dk.brics.automaton.BasicAutomata
import ap.parser.ITerm
import ostrich.automata.BricsTLabelOps
import dk.brics.automaton.Transition
import scala.collection.JavaConverters._
import ap.parser.IFormula
import ap.parser.IExpression._
import ostrich.cesolver.util.TermGenerator
import ap.parser.Simplifier
import ostrich.cesolver.util.ParikhUtil
import ap.parser.IBinJunctor
import ap.parser.IBoolLit

object CEBasicOperations {

  private val directlyUnwindUpper = 20
  private val termGen = TermGenerator()

  def toBricsAutomaton(aut: CostEnrichedAutomaton): BAutomaton = {
    val baut = new BAutomaton
    baut.setDeterministic(false)

    val old2new = aut.states.map(s => s -> new State()).toMap
    for ((s, l, t, v) <- aut.transitions) {
      old2new(s).addTransition(new Transition(l._1, l._2, old2new(t)))
    }
    for (s <- aut.acceptingStates) {
      old2new(s).setAccept(true)
    }
    baut.setInitialState(old2new(aut.initialState))
    baut
  }

  def unionWithoutRegs(
      auts: Seq[CostEnrichedAutomaton]
  ): CostEnrichedAutomaton = {
    auts.foreach(registersMustBeEmpty)
    val bauts = auts.map(toBricsAutomaton)
    BricsAutomatonWrapper(BasicOperations.union(bauts.asJava))
  }

  def union(
      auts: Seq[CostEnrichedAutomaton],
      autsFormulaIsSame: Boolean = false
  ): CostEnrichedAutomaton = {
    ParikhUtil.log("CEBasicOperations.union: compute the union of automata")
    if (auts.isEmpty) return BricsAutomatonWrapper(BasicAutomata.makeEmpty)
    if (
      auts.forall(aut =>
        aut.registers.isEmpty &&
          (((new Simplifier)(aut.regsRelation)).isTrue || autsFormulaIsSame)
      )
    ) {
      val res = unionWithoutRegs(auts)
      res.regsRelation &= auts.head.regsRelation
      return res
    }
    val ceAut = new CostEnrichedAutomaton
    val termGen = TermGenerator()
    val initialS = ceAut.initialState
    val newRegisters: ArrayBuffer[ITerm] = new ArrayBuffer
    val oldRegsiters = auts.flatMap(_.registers)
    val oldRegsLen = oldRegsiters.size
    var prefixlen = 0
    // the regs relation need to be satisfied for epsilon string
    val epsilonSatisfied =
      auts.filter(aut => aut.isAccept(aut.initialState)).map(_.regsRelation)
    // the list of disjunctive formula for the union of the automata
    val finalDisjList = ArrayBuffer[IFormula]()
    // map each automaton to the formula that is satisfied iff
    // the union of the automata chooses this automaton
    val partitionFormula = MHashMap[CostEnrichedAutomaton, IFormula]()
    val aut2newRegIdx = MHashMap[CostEnrichedAutomaton, Int]()

    for (aut <- auts) {
      newRegisters += termGen.registerTerm
      val f = newRegisters.last >= 1
      aut2newRegIdx += (aut -> (newRegisters.size - 1))
      partitionFormula += (aut -> f)
    }

    for (aut <- auts) {
      val old2new = aut.states.map(s => (s -> ceAut.newState())).toMap
      for ((s, l, t, v) <- aut.transitions) {
        ap.util.Timeout.check
        val preFill = Seq.fill(prefixlen)(0)
        val postFill = Seq.fill(oldRegsLen - prefixlen - v.size)(0)
        val newRegsUpdate = ArrayBuffer.fill(newRegisters.size)(0)
        if (aut2newRegIdx(aut) >= 0)
          newRegsUpdate(aut2newRegIdx(aut)) = 1
        val tailVec = newRegsUpdate.toSeq
        val newVec =
          preFill ++ v ++ postFill ++ tailVec
        ceAut.addTransition(
          old2new(s),
          l,
          old2new(t),
          newVec
        )
      }
      for (s <- aut.acceptingStates)
        ceAut.setAccept(old2new(s), true)

      prefixlen += aut.registers.size

      ceAut.addEpsilon(initialS, old2new(aut.initialState))
      finalDisjList += partitionFormula(aut) & aut.regsRelation
    }
    // all register equal to 0 and disj(epsilonSatisfied)
    finalDisjList += connectSimplify(
      ((oldRegsiters ++ newRegisters).map(_ === 0)) :+ or(epsilonSatisfied),
      IBinJunctor.And
    )

    ceAut.regsRelation = or(finalDisjList)
    ceAut.registers = oldRegsiters ++ newRegisters
    ceAut
  }

  def complementWithoutRegs(
      aut: CostEnrichedAutomaton
  ): CostEnrichedAutomaton = {
    ParikhUtil.todo(
      "CEBasicOperations.complementWithoutRegs: Rewrite this function by using CostEnrichedAutomaton and add ap.util.Timeout.check, to avoid that the timeout is not checked and the function is not terminated",
      0
    )
    registersMustBeEmpty(aut)
    val afterDetermine = determinate(aut)
    val compAut = new CostEnrichedAutomaton
    val alwaysAccpetS = compAut.newState()
    val old2new =
      afterDetermine.states.map(s => (s, compAut.newState())).toMap
    compAut.initialState = old2new(afterDetermine.initialState)
    for ((s, l, t, vec) <- afterDetermine.transitions) {
      compAut.addTransition(old2new(s), l, old2new(t), vec)
    }
    // neg accepted states
    for (s <- afterDetermine.states; if !afterDetermine.isAccept(s)) {
      compAut.setAccept(old2new(s), true)
    }
    compAut.setAccept(alwaysAccpetS, true)
    // totalize
    for (state <- afterDetermine.states) {
      ap.util.Timeout.check
      val outLabelsSorted =
        afterDetermine.outgoingTransitions(state).map(_._2).toSeq.sorted
      var maxi: Int = (Char.MinValue).toInt
      for ((min, max) <- outLabelsSorted) {
        if (maxi < min)
          compAut.addTransition(
            old2new(state),
            (maxi.toChar, (min.toInt - 1).toChar),
            alwaysAccpetS,
            Seq()
          )
        if (max.toInt + 1 > maxi.toInt)
          maxi = max.toInt + 1
      }
      if (maxi <= Char.MaxValue) {
        compAut.addTransition(
          old2new(state),
          (maxi.toChar, Char.MaxValue),
          alwaysAccpetS,
          Seq()
        )
      }
    }
    compAut.addTransition(
      alwaysAccpetS,
      BricsTLabelOps.sigmaLabel,
      alwaysAccpetS,
      Seq()
    )
    
    removeDeadState(compAut)
  }

  def complement(
      aut: CostEnrichedAutomaton
  ): CostEnrichedAutomaton = {
    ParikhUtil.log(
      "CEBasicOperations.complement: compute the complement of automata"
    )
    complementWithoutRegs(aut)
  }

  def overComplement(
      aut: CostEnrichedAutomaton
  ): CostEnrichedAutomaton = {
    ParikhUtil.log(
      "CEBasicOperations.overComplement: compute the over complement of automata"
    )
    val afterDetermine = determinate(aut)
    val overCompAut = new CostEnrichedAutomaton
    val alwaysAccpetS = overCompAut.newState()
    // val mergedOldAcceptStates = overCompAut.newState()
    val old2new =
      afterDetermine.states.map(s => (s, overCompAut.newState())).toMap
    overCompAut.initialState = old2new(afterDetermine.initialState)
    for ((s, l, t, vec) <- afterDetermine.transitions) {
      val newVec = if (afterDetermine.isAccept(t)) vec :+ 1 else vec :+ 0
      overCompAut.addTransition(old2new(s), l, old2new(t), newVec)
      // if (afterDetermine.isAccept(t))
      //   overCompAut.addTransition(
      //     old2new(s),
      //     l,
      //     mergedOldAcceptStates,
      //     vec :+ 1
      //   )
    }
    // neg accepted states
    for (s <- afterDetermine.states) {
      overCompAut.setAccept(old2new(s), true)
    }
    overCompAut.setAccept(alwaysAccpetS, true)
    // overCompAut.setAccept(mergedOldAcceptStates, true)
    if (afterDetermine.isAccept(afterDetermine.initialState))
      overCompAut.setAccept(overCompAut.initialState, true)
    val totalizeNewTVec = Seq.fill(afterDetermine.registers.size)(0) :+ 0

    // totalize
    overCompAut.addTransition(
      alwaysAccpetS,
      BricsTLabelOps.sigmaLabel,
      alwaysAccpetS,
      totalizeNewTVec
    )
    for (state <- afterDetermine.states) {
      ap.util.Timeout.check
      val outLabelsSorted =
        afterDetermine.outgoingTransitions(state).map(_._2).toSeq.sorted
      var maxi: Int = (Char.MinValue).toInt
      for ((min, max) <- outLabelsSorted) {
        if (maxi < min)
          overCompAut.addTransition(
            old2new(state),
            (maxi.toChar, (min.toInt - 1).toChar),
            alwaysAccpetS,
            totalizeNewTVec
          )
        if (max.toInt + 1 > maxi.toInt)
          maxi = max.toInt + 1
      }
      if (maxi <= Char.MaxValue)
        overCompAut.addTransition(
          old2new(state),
          (maxi.toChar, Char.MaxValue),
          alwaysAccpetS,
          totalizeNewTVec
        )
    }
    val totalizeNewReg = termGen.registerTerm
    overCompAut.registers = afterDetermine.registers :+ totalizeNewReg
    // neg the accepted condition
    overCompAut.regsRelation =
      ((totalizeNewReg === 1) ===> !afterDetermine.regsRelation)
    overCompAut
  }

  def intersection[A <: CostEnrichedAutomaton](
      aut1: A,
      aut2: A
  ): CostEnrichedAutomaton = {
    ParikhUtil.log("CEBasicOperations.intersection: intersect automata")
    val ceAut = new CostEnrichedAutomaton
    val initialState1 = aut1.initialState
    val initialState2 = aut2.initialState
    val initialState = ceAut.initialState
    ceAut.setAccept(
      initialState,
      aut1.isAccept(initialState1) && aut2.isAccept(initialState2)
    )

    // from old states pair to new state
    val pair2state = new MHashMap[(State, State), State]
    val worklist = new ArrayStack[(State, State)]

    pair2state.put((initialState1, initialState2), initialState)
    worklist.push((initialState1, initialState2))

    while (!worklist.isEmpty) {
      ap.util.Timeout.check
      val (from1, from2) = worklist.pop()
      val from = pair2state(from1, from2)
      for (
        (to1, label1, vec1) <- aut1.outgoingTransitions(from1);
        (to2, label2, vec2) <- aut2.outgoingTransitions(from2)
      ) {
        // intersect transition
        aut1.LabelOps.intersectLabels(label1, label2) match {
          case Some(label) => {
            val to = pair2state.getOrElseUpdate(
              (to1, to2), {
                worklist.push((to1, to2))  // only push when it is new
                ceAut.newState()
              }
            )
            val vector = vec1 ++ vec2
            ceAut.addTransition(
              from,
              label,
              to,
              vector
            )
            ceAut.setAccept(
              to,
              aut1.isAccept(to1) && aut2.isAccept(to2)
            )
          }
          case _ => // do nothing
        }
      }
    }
    ceAut.regsRelation = connectSimplify(
      Seq(aut1.regsRelation, aut2.regsRelation),
      IBinJunctor.And
    )
    ceAut.registers = aut1.registers ++ aut2.registers
    removeDeadState(ceAut)
  }

  def diffWithoutRegs(
      aut1: CostEnrichedAutomaton,
      aut2: CostEnrichedAutomaton
  ): CostEnrichedAutomaton = {
    val baut1 = toBricsAutomaton(aut1)
    val baut2 = toBricsAutomaton(aut2)
    BricsAutomatonWrapper {
      BasicOperations.minus(baut1, baut2)
    }
  }

  def diff(
      a1: CostEnrichedAutomaton,
      a2: CostEnrichedAutomaton
  ): CostEnrichedAutomaton = {
    ParikhUtil.log("CEBasicOperations.diff: compute the difference of automata")
    if (a1.registers.isEmpty && a2.registers.isEmpty)
      return diffWithoutRegs(a1, a2)
    intersection(a1, complement(a2))
  }

  def concatenate(
      auts: Seq[CostEnrichedAutomaton]
  ): CostEnrichedAutomaton = {
    ParikhUtil.log("CEBasicOperations.concatenate: concatenate automata")
    if (auts.isEmpty)
      return BricsAutomatonWrapper.makeEmpty()
    val ceAut = new CostEnrichedAutomaton
    val old2new =
      auts.map(_.states).flatten.map(s => (s -> ceAut.newState())).toMap
    val finalVecLen = auts.map(_.registers.size).sum

    ceAut.initialState = old2new(auts(0).initialState)

    var prefixlen = 0
    for (aut <- auts) {
      for ((s, l, t, v) <- aut.transitions) {
        ap.util.Timeout.check
        ceAut.addTransition(
          old2new(s),
          l,
          old2new(t),
          Seq.fill(prefixlen)(0) ++ v ++ Seq.fill(
            finalVecLen - prefixlen - v.size
          )(0)
        )
      }
      prefixlen += aut.registers.size
    }

    for (s <- auts.last.acceptingStates)
      ceAut.setAccept(old2new(s), true)
    for (
      i <- (0 until auts.size - 1).reverse;
      lastAccept <- auts(i).acceptingStates
    )
      ceAut.addEpsilon(old2new(lastAccept), old2new(auts(i + 1).initialState))
    ceAut.registers = auts.flatMap(_.registers)
    ceAut.regsRelation =
      connectSimplify(auts.map(_.regsRelation), IBinJunctor.And)
    ceAut
  }

  private def registersMustBeEmpty(aut: CostEnrichedAutomaton): Unit = {
    if (aut.registers.nonEmpty) {
      if (ParikhUtil.debugOpt)
        aut.toDot("registersMustBeEmpty_assertion_failed")
      throw new Exception("Registers must be empty")
    }
  }

  def repeatUnwind(
      aut: CostEnrichedAutomaton,
      min: Int
  ): CostEnrichedAutomaton = {
    ParikhUtil.log(
      "CEBasicOperations.repeatUnwind: directly unwind repeat automata, min = " + min + ", max = " + "inf"
    )
    registersMustBeEmpty(aut)
    BricsAutomatonWrapper(
      BasicOperations.repeat(
        toBricsAutomaton(aut),
        min
      )
    )
  }

  def repeatUnwind(
      aut: CostEnrichedAutomaton,
      min: Int,
      max: Int
  ): CostEnrichedAutomaton = {
    ParikhUtil.log(
      "CEBasicOperations.repeatUnwind: directly unwind automata, min = " + min + ", max = " + max
    )
    if (min > max) return BricsAutomatonWrapper.makeEmpty()
    if (max == 0) return BricsAutomatonWrapper.makeEmptyString()
    val auts = Seq.fill(max)(aut.clone())
    val ceAut = new CostEnrichedAutomaton
    val old2new =
      auts.map(_.states).flatten.map(s => (s -> ceAut.newState())).toMap
    val finalVecLen = auts.map(_.registers.size).sum

    ceAut.initialState = old2new(auts(0).initialState)

    var prefixlen = 0
    for (aut <- auts) {
      for ((s, l, t, v) <- aut.transitions){
        ap.util.Timeout.check
        ceAut.addTransition(
          old2new(s),
          l,
          old2new(t),
          Seq.fill(prefixlen)(0) ++ v ++ Seq.fill(
            finalVecLen - prefixlen - v.size
          )(0)
        )
      }
      prefixlen += aut.registers.size
    }

    for (aut <- auts; s <- aut.acceptingStates)
      ceAut.setAccept(old2new(s), false)
    for (
      (aut, i) <- auts.zipWithIndex; if (i >= min - 1); s <- aut.acceptingStates
    )
      ceAut.setAccept(old2new(s), true)

    if (min == 0) ceAut.setAccept(ceAut.initialState, true)

    for (
      i <- (0 until auts.size - 1).reverse;
      lastAccept <- auts(i).acceptingStates
    )
      ceAut.addEpsilon(old2new(lastAccept), old2new(auts(i + 1).initialState))
    ceAut.registers = auts.flatMap(_.registers)
    val epsilonF =
      if (ceAut.isAccept(ceAut.initialState))
        and(for (r <- ceAut.registers) yield r === 0)
      else IBoolLit(false)
    ceAut.regsRelation = or(
      Seq(connectSimplify(auts.map(_.regsRelation), IBinJunctor.And), epsilonF)
    )
    ceAut
  }

  def repeat(
      aut: CostEnrichedAutomaton,
      min: Int,
      max: Int,
      unwind: Boolean
  ): CostEnrichedAutomaton = {
    if (unwind | max < directlyUnwindUpper / aut.states.size) {
      return repeatUnwind(aut, min, max)
    }

    ParikhUtil.log(
      "CEBasicOperations.repeat: symbolicly repeat automata, min = " + min + ", max = " + max
    )

    if (max < min || min < 0 || aut.isEmpty)
      return new BricsAutomatonWrapper(BasicAutomata.makeEmpty())
    if (max == 0)
      return new BricsAutomatonWrapper(BasicAutomata.makeEmptyString())
    val ceAut = new CostEnrichedAutomaton
    val newRegister = termGen.registerTerm
    val old2new = aut.states.map(s => (s, ceAut.newState())).toMap
    ceAut.initialState = old2new(aut.initialState)
    if (min == 0)
      ceAut.setAccept(ceAut.initialState, true)
    // construct update of the new register
    for ((t, l, v) <- aut.outgoingTransitions(aut.initialState))
      ceAut.addTransition(
        old2new(aut.initialState),
        l,
        old2new(t),
        v ++ Seq(1)
      )
    // construct other updates
    for ((s, l, t, v) <- aut.transitions; if s != aut.initialState)
      ceAut.addTransition(old2new(s), l, old2new(t), v ++ Seq(0))
    for (s <- aut.acceptingStates) {
      for ((t, l, v) <- aut.outgoingTransitions(aut.initialState))
        ceAut.addTransition(old2new(s), l, old2new(t), v ++ Seq(1))
      ceAut.setAccept(old2new(s), true)
    }
    val newRegisters = aut.registers ++ Seq(newRegister)
    // if empty string is accepted by the aut, then the repeat of the aut should also
    // accept empty string
    val lowerbound = if (ceAut.isAccept(ceAut.initialState)) 0 else min
    val upperbound = max
    val newRegsRelation =
      if (max - min <= 50)
        // because our algorithm is hard to find accepted word by large registers and simplex algorithm used to solve parikh image perfer to find convex point which lead to large registers, we try our best to avoid upper bounds of registers directly
        or(for (i <- lowerbound to upperbound) yield newRegister === i)
      else
        and(Seq(newRegister >= lowerbound, newRegister <= upperbound))
    ceAut.registers = newRegisters
    ceAut.regsRelation = newRegsRelation
    ceAut
  }

  def optional(aut: CostEnrichedAutomaton): CostEnrichedAutomaton = {
    ParikhUtil.log("CEBasicOperations.optional: optional automata")
    aut.setAccept(aut.initialState, true)
    aut.regsRelation = or(
      Seq(aut.regsRelation, and(aut.registers.map(_ === 0)))
    )
    aut
  }

  private def determinate(aut: CostEnrichedAutomaton) = {
    val ceAut = new CostEnrichedAutomaton
    val powerset2new = new MHashMap[Set[State], State]
    val workstack = new MStack[Set[State]]

    val initialState = ceAut.initialState
    powerset2new += (Set(aut.initialState) -> initialState)
    workstack.push(Set(aut.initialState))

    while (workstack.nonEmpty) {
      ap.util.Timeout.check

      val curPowerSet = workstack.pop()
      val curState = powerset2new(curPowerSet)
      val curTrans = new MHashMap[((Char, Char), Seq[Int]), MHashSet[State]]
      val outLabels =
        for (
          s <- curPowerSet;
          (t, l, v) <- aut.outgoingTransitions(s)
        ) yield l
      val outLabelsEnumerator = new CETLabelEnumerator(outLabels)
      for (
        s <- curPowerSet; (t, l, v) <- aut.outgoingTransitions(s);
        splitlbl <- outLabelsEnumerator.enumLabelOverlap(l)
      ) {
        val newGoToStates =
          curTrans.getOrElse((splitlbl, v), MHashSet()).union(Set(t))
        curTrans += ((splitlbl, v) -> newGoToStates)
      }
      for (((splitlbl, v), set) <- curTrans) {
        val powerset = set.toSet
        if (!powerset2new.contains(powerset)) {
          powerset2new += (powerset -> ceAut.newState())
          workstack.push(powerset)
        }
        ceAut.addTransition(
          curState,
          splitlbl,
          powerset2new(powerset),
          v
        )
      }
    }
    for ((seq, s) <- powerset2new) {
      if (seq.exists(aut.isAccept))
        ceAut.setAccept(s, true)
    }
    ceAut.registers = aut.registers
    ceAut.regsRelation = aut.regsRelation
    ceAut
  }

  private def partitionStates(aut: CostEnrichedAutomaton) = {
    val pairs = new MHashSet[Set[State]]()
    for (s <- aut.states; t <- aut.states; if s != t)
      pairs.add(Set(s, t))
    val pair2dependingList = new MHashMap[Set[State], ArrayBuffer[Set[State]]]()
    for (pair <- pairs) {
      val state1 = pair.head
      val state2 = pair.last
      for ((source1, l1, v1) <- aut.incomingTransitions(state1)) {
        for (
          (source2, l2, v2) <- aut.incomingTransitions(state2);
          if (l1, v1).equals((l2, v2))
        ) {
          ap.util.Timeout.check
          if (source1 != source2) {
            pair2dependingList.getOrElseUpdate(pair, ArrayBuffer()) += Set(
              source1,
              source2
            )
          }
        }
      }
    }
    val distinguishedPairs = new MHashSet[Set[State]]()
    val baseDistinguishedPairs = new MHashSet[Set[State]]()
    for (pair <- pairs) {
      if (aut.isAccept(pair.head) != aut.isAccept(pair.last)) {
        baseDistinguishedPairs.add(pair)
      } else {
        val outVecs1 = aut
          .outgoingTransitions(pair.head)
          .map { case (_, l, v) => (l, v) }
          .toSet
        val outVecs2 = aut
          .outgoingTransitions(pair.last)
          .map { case (_, l, v) => (l, v) }
          .toSet
        if (outVecs1 != outVecs2) {
          baseDistinguishedPairs.add(pair)
        }
      }
    }
    val newDistinguishedPairs = baseDistinguishedPairs
    while (newDistinguishedPairs.nonEmpty) {
      distinguishedPairs ++= newDistinguishedPairs
      val tmpPairs = newDistinguishedPairs.clone()
      newDistinguishedPairs.clear()
      for (pair <- tmpPairs; if pair2dependingList.contains(pair)) {
        for (dependingPair <- pair2dependingList(pair)) {
          if (!distinguishedPairs.contains(dependingPair)) {
            newDistinguishedPairs.add(dependingPair)
          }
        }
      }
    }
    val s2equivalentClass = new MHashMap[State, MHashSet[State]]
    for (s <- aut.states)
      s2equivalentClass += (s -> MHashSet(s))
    for (pair <- pairs) {
      if (!distinguishedPairs.contains(pair)) {
        val s1 = pair.head
        val s2 = pair.last
        s2equivalentClass(s1) ++= s2equivalentClass(s2)
        s2equivalentClass(s2) = s2equivalentClass(s1)
      }
    }
    val equalClass2rep = new MHashMap[Set[State], State]
    val s2reprensentive = new MHashMap[State, State]
    for (equalClass <- s2equivalentClass.values) {
      equalClass2rep += (equalClass.toSet -> aut.newState())
    }
    for ((s, set) <- s2equivalentClass) {
      s2reprensentive += (s -> equalClass2rep(set.toSet))
    }
    s2reprensentive
  }

  def minimizeHopcroft(
      aut: CostEnrichedAutomaton
  ): CostEnrichedAutomaton = {
    ParikhUtil.log(
      "CEBasicOperations.minimizeHopcroft: minimize automata"
    )
    val afterDetermine = determinate(aut)
    ParikhUtil.log(
      "aut size is " + aut.size() + ", afterDetermine size is " + afterDetermine
        .size()
    )
    if (
      afterDetermine.size() > ParikhUtil.MAX_MINIMIZE_SIZE
    ) // the overhead of minimization is too large (heuristic)
      return if (aut.size() < afterDetermine.size()) aut else afterDetermine
    if (
      afterDetermine.size() / ParikhUtil.MAX_DETERMIN_EXPAND > aut.size()
    ) // the minimization is not effective (heuristic)
      return aut
    val s2representive = partitionStates(afterDetermine)
    val ceAut = new CostEnrichedAutomaton
    ceAut.initialState = s2representive(afterDetermine.initialState)
    for ((s, l, t, v) <- afterDetermine.transitions)
      ceAut.addTransition(s2representive(s), l, s2representive(t), v)
    for (s <- afterDetermine.acceptingStates)
      ceAut.setAccept(s2representive(s), true)
    ceAut.regsRelation = afterDetermine.regsRelation
    ceAut.registers = afterDetermine.registers
    ParikhUtil.log("After minimizeHopcroft, size is " + ceAut.size())
    removeDuplicatedReg(ceAut)
  }

  def removeDuplicatedReg(
      aut: CostEnrichedAutomaton
  ): CostEnrichedAutomaton = {
    if (aut.registers.isEmpty) return aut
    ParikhUtil.log(
      "CEBasicOperations.removeDuplicatedReg: remove duplicated registers"
    )
    def seqRemoveValuesAtIdxs[A](s: Seq[A], idxs: Set[Int]): Seq[A] = {
      val res = ArrayBuffer[A]()
      for (i <- 0 until s.size) {
        if (!idxs.contains(i)) {
          res += s(i)
        }
      }
      res.toSeq
    }
    // transpose the vectors, so that each vector is a column containing all updates of a register
    val vectorsT =
      aut.transitions
        .map { case (_, _, _, v) => v }
        .toSeq
        .transpose
        .zipWithIndex
    val vectors2Idxs = new MHashMap[Seq[Int], Set[Int]]()
    // map the transposed vectors to their updated register
    for ((v, i) <- vectorsT) {
      if (!vectors2Idxs.contains(v)) {
        vectors2Idxs += (v -> Set[Int]())
      }
      vectors2Idxs(v) += i
    }
    // if a transposed vector map to more than one register, then these registers are duplicated
    val duplicatedRegs =
      vectors2Idxs.map { case (_, idxs) => idxs }.filter(_.size > 1)
    val ceAut = new CostEnrichedAutomaton
    var newRegsRelation = aut.regsRelation
    var newRegisters = aut.registers
    val old2new = aut.states.map(s => (s, ceAut.newState())).toMap
    if (duplicatedRegs.isEmpty) return aut

    // remove the duplicated registers and add lia constraints to remain the semantics
    val removeIdxs = new MHashSet[Int]()
    duplicatedRegs.foreach { regidxs =>
      regidxs.tail.foreach { idx =>
        newRegsRelation = connectSimplify(
          Seq(
            newRegsRelation,
            (newRegisters(regidxs.head) === newRegisters(idx))
          ),
          IBinJunctor.And
        )
      }
      removeIdxs ++= regidxs.tail
    }
    newRegisters = seqRemoveValuesAtIdxs(newRegisters, removeIdxs.toSet)
    for ((from, lbl, to, vec) <- aut.transitions) {
      ceAut.addTransition(
        old2new(from),
        lbl,
        old2new(to),
        seqRemoveValuesAtIdxs(vec, removeIdxs.toSet)
      )
    }
    for (s <- aut.acceptingStates)
      ceAut.setAccept(old2new(s), true)
    ceAut.initialState = old2new(aut.initialState)
    ceAut.registers = newRegisters
    ceAut.regsRelation = newRegsRelation
    ceAut
  }

  def removeDeadState(
      aut: CostEnrichedAutomaton
  ): CostEnrichedAutomaton = {
    ParikhUtil.log(
      "CEBasicOperations.removeDeadState: remove states that can not reach the final state"
    )
    val ceAut = new CostEnrichedAutomaton
    val old2new = aut.states.map(s => (s, ceAut.newState())).toMap
    val workstack = MStack[State]()
    val seen = MHashSet[State]()
    for (s <- aut.acceptingStates) {
      workstack.push(s); seen.add(s); ceAut.setAccept(old2new(s), true)
    }
    while (workstack.nonEmpty) {
      ap.util.Timeout.check
      val cur = workstack.pop()
      for ((s, l, v) <- aut.incomingTransitions(cur)) {
        ceAut.addTransition(old2new(s), l, old2new(cur), v)
        if (!seen(s)) {
          workstack.push(s)
          seen.add(s)
        }
      }
    }
    ceAut.initialState = old2new(aut.initialState)
    ceAut.registers = aut.registers
    ceAut.regsRelation = aut.regsRelation
    ceAut
  }
}
