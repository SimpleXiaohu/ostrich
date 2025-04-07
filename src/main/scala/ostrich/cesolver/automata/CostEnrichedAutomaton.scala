/**
 * This file is part of Ostrich, an SMT solver for strings. Copyright (c) 2023 Denghang Hu. All
 * rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification, are permitted
 * provided that the following conditions are met:
 *
 * * Redistributions of source code must retain the above copyright notice, this list of conditions
 * and the following disclaimer.
 *
 * * Redistributions in binary form must reproduce the above copyright notice, this list of
 * conditions and the following disclaimer in the documentation and/or other materials provided with
 * the distribution.
 *
 * * Neither the name of the authors nor the names of their contributors may be used to endorse or
 * promote products derived from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR
 * IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND
 * FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 * DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY
 * WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

package ostrich.cesolver.automata

import ostrich.automata.TLabelEnumerator
import scala.collection.mutable.{
  TreeSet => MTreeSet,
  HashSet => MHashSet,
  HashMap => MHashMap,
  ArrayStack => MStack
}
import ostrich.cesolver.util.{ParikhUtil, TermGenerator, ConstSubstVisitor}
import ostrich.automata.Automaton
import dk.brics.automaton.BasicOperations
import java.time.LocalDate
import java.io.File
import ostrich.cesolver.util.DotWriter
import ostrich.cesolver.automata.CEBasicOperations.removeDuplicatedReg
import ap.parser.ITerm
import ostrich.automata.BricsTLabelEnumerator




object CostEnrichedAutomaton {
  type State = CostEnrichedAutomaton#State

  /**
   * Compute states that can only be reached through words with some unique length
   */
  def uniqueLengthStates(aut: CostEnrichedAutomaton): Map[State, Int] = {
    val uniqueLengthStates = new MHashMap[State, Int]
    val nonUniqueLengthStates = new MHashSet[State]
    val todo = new MStack[State]

    uniqueLengthStates.put(aut.initialState, 0)
    todo push aut.initialState

    while (!todo.isEmpty) {
      val s = todo.pop
      if (nonUniqueLengthStates contains s) {
        for ((to, _, _) <- aut.outgoingTransitions(s)) {
          uniqueLengthStates -= to
          if (nonUniqueLengthStates add to) todo push to
        }
      } else {
        val sLen = uniqueLengthStates(s)
        for ((to, _, _) <- aut.outgoingTransitions(s)) (uniqueLengthStates get to) match {
          case Some(oldLen) => if (oldLen != sLen + 1) {
              uniqueLengthStates -= to
              nonUniqueLengthStates += to
              todo push to
            }
          case None => if (!(nonUniqueLengthStates contains to)) {
              uniqueLengthStates.put(to, sLen + 1)
              todo push to
            }
        }
      }
    }

    uniqueLengthStates.toMap
  }

  /**
   * Unique lengths of accepted words
   */
  def uniqueAcceptedWordLengths(aut: CostEnrichedAutomaton): Option[Seq[Int]] = {
    val uniqueStates = uniqueLengthStates(aut)
    val lengths = for (s <- aut.acceptingStates) yield (uniqueStates get s)
    if (lengths.size > 0 && !(lengths contains None))
      Some(lengths.filter(_ != None).map(_.get).toSeq)
    else None
  }
}

class CostEnrichedAutomaton extends CostEnrichedAutomatonBase {

  override lazy val states: Iterable[State] = {
    val seenlist = new MHashSet[State]
    val worklist = new MStack[State]
    worklist.push(initialState)
    seenlist.add(initialState)
    while (!worklist.isEmpty) {
      val s = worklist.pop
      for (
        (to, _, _) <- outgoingTransitions(s) if !seenlist.contains(to)
      ) {
        worklist.push(to)
        seenlist.add(to)
      }
    }
    seenlist.toSeq
  }

  def |(that: Automaton): Automaton = {
    CEBasicOperations.union(Seq(this, that.asInstanceOf[CostEnrichedAutomaton]))
  }

  def &(that: Automaton): Automaton = CEBasicOperations
    .intersection(this, that.asInstanceOf[CostEnrichedAutomaton])

  def unary_! = {
    if (registers.nonEmpty) throw new UnsupportedOperationException
    CEBasicOperations.complement(this)
  }

  // NOTE: This is overapproximation since we do not consider the registers.
  def isEmpty: Boolean = {
    val seenlist = new MHashSet[State]
    val worklist = new MStack[State]
    worklist.push(initialState)
    seenlist.add(initialState)
    while (!worklist.isEmpty) {
      val s = worklist.pop
      if (isAccept(s)) {
        return false
      }
      for (
        (to, _, _) <- outgoingTransitions(s) if !seenlist.contains(to)
      ) {
        worklist.push(to)
        seenlist.add(to)
      }
    }
    true
  }
  def apply(word: Seq[Int]): Boolean = {
    ParikhUtil.log(
      "Naively run word on CEFA without registers. Indeed, the CEFA with registers can be easily supported in the future."
    )
    if (registers.nonEmpty) throw new UnsupportedOperationException
    BasicOperations.run(CEBasicOperations.toBricsAutomaton(this), word.map(_.toChar).mkString)
  }

  // To simplify the accepted word generations. We (1) remove duplicate transitions with same states and vectors, (2) remove duplicated registers.
  private def removeDupTransitions(): CostEnrichedAutomaton = {
    val ceAut = new CostEnrichedAutomaton
    val old2new = states.map(_ -> ceAut.newState()).toMap
    ceAut.initialState = old2new(initialState)
    for (state <- states) {
      if (isAccept(state))
        ceAut.setAccept(old2new(state), true)
      val outTrans = outgoingTransitions(state)
      val afterRemoveDup = outTrans
        .groupBy { case (outState, _, vec) =>
          (outState, vec)
        }
        .map { case (_, trans) =>
          trans.head
        }
      for ((outState, label, vec) <- afterRemoveDup) {
        ceAut.addTransition(old2new(state), label, old2new(outState), vec)
      }
    }
    ceAut.registers = registers
    ceAut.regsRelation = regsRelation
    removeDuplicatedReg(ceAut)
  }

  // Get the accepted word when the registers are empty.

  def getAcceptedWord: Option[Seq[Int]] = {
    assert(registers.isEmpty)
    val worklist = new MStack[(State, Seq[Int])]
    val seenlist = new MHashSet[State]
    worklist.push((initialState, Seq()))
    seenlist.add(initialState)
    while (!worklist.isEmpty) {
      val (s, word) = worklist.pop
      if (isAccept(s)) return Some(word)
      for ((to, label, _) <- outgoingTransitions(s)) {
        if (!seenlist.contains(to)) {
          worklist.push((to, word :+ label._1.toInt))
          seenlist.add(to)
        }
      }
    }
    None
  }

  def getAcceptedWordByRegisters(
      registersModel: Map[ITerm, Int]
  ): Option[Seq[Int]] = {
    ParikhUtil.log("Finding the accepted word by registers")
    ParikhUtil.log(s"Registers model: $registersModel")
    if (registers.isEmpty) return getAcceptedWord
    val registersValue = registers.map(registersModel(_).intValue)
    val todoList = new MStack[(State, Seq[Int], Seq[Char])]
    val visited = new MHashSet[(State, Seq[Int])]
    todoList.push(
      (
        initialState,
        Seq.fill(registers.size)(0),
        ""
      )
    )
    visited.add(
      (initialState, Seq.fill(registers.size)(0))
    )
    while (!todoList.isEmpty) {
      ap.util.Timeout.check
      val (state, regsVal, word) = todoList.pop()
      if (isAccept(state) && regsVal == registersValue) {
        return Some(word.map(_.toInt))
      }
      val sortedByVecSum =
        outgoingTransitions(state).toSeq.sortBy(_._3.sum).reverse
      for ((t, l, v) <- sortedByVecSum) {
        val newRegsVal = ParikhUtil.sumVec(regsVal, v)
        val newWord = word :+ l._1
        val newState = t
        if (
          !visited.contains((newState, newRegsVal)) &&
          !newRegsVal.zip(registersValue).exists(r => r._1 > r._2)
        ) {
          todoList.push((newState, newRegsVal, newWord))
          visited.add((newState, newRegsVal))
        }
      }
    }
    None
  }

  override def clone(): CostEnrichedAutomaton = {
    val newAut = new CostEnrichedAutomaton
    val old2new = states.map(s => s -> newAut.newState()).toMap
    newAut.initialState = old2new(initialState)
    val regSubst = registers.map { case t => t -> TermGenerator().registerTerm }.toMap
    newAut.registers = regSubst.values.toSeq
    newAut.regsRelation = new ConstSubstVisitor().apply(regsRelation, regSubst)
    for ((from, lbl, to, vec) <- transitions) {
      newAut.addTransition(old2new(from), lbl, old2new(to), vec)
    }
    for (s <- acceptingStates) { newAut.setAccept(old2new(s), true) }
    newAut
  }

  override def toString: String = {
    def transition2Str(transition: (State, TLabel, State, Seq[Int])): String = {
      val (s, (left, right), t, vec) = transition
      s"${s} -> ${t} [${left.toInt}, ${right.toInt}] $vec"
    }

    s"""
    automaton A${hashCode()} {
      init ${initialState};
      ${transitions.toSeq
        .sortBy(_._1)
        .map(transition2Str)
        .mkString("\n    ")}
      accepting ${acceptingStates.map(s => s"${s}").mkString(", ")};
      Registers ${registers.mkString(", ")};
      RegsRelation ${regsRelation};
    };
    """
  }

  def toDot(suffix: String): Unit = {
    if (!ParikhUtil.debugOpt) return
    val outdir = "dot" + File.separator + LocalDate.now().toString
    new File(outdir).mkdirs()
    val dotfile = outdir + File.separator + s"${suffix}.dot"
    val writer = new DotWriter(dotfile.toString)
    val strbuilder = new StringBuilder
    strbuilder.append(s"""
      digraph G {
        rankdir=LR;
        init [shape=point];
        node [shape = doublecircle];
        ${acceptingStates.mkString(" ")}
        node [shape = circle];
        init -> ${initialState};""")

    for ((s, (left, right), t, vec) <- transitions.toSeq.sortBy(_._1)) {
      strbuilder.append(s"""
        ${s} -> ${t} [label = \"${left.toInt},${right.toInt}:(${vec.mkString(
          ","
        )})\"]""")
    }
    strbuilder.append("\n")
    strbuilder.append(
      s"""        \"${registers.mkString(", ")}\" [shape=plaintext]"""
    )
    strbuilder.append("\n      }")
    writer.closeAfterWrite(strbuilder.toString())
  }
}

class CETLabelEnumerator(labels: Iterable[(Char, Char)]) extends BricsTLabelEnumerator(labels.iterator) 
