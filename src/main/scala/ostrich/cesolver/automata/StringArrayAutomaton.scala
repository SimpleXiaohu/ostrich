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
import ostrich.cesolver.util.ParikhUtil.debugPrintln
import ostrich.automata.Automaton
import scala.collection.mutable.ArrayBuffer
import ap.parser.IExpression.connectSimplify
import ap.parser.IBinJunctor
import ostrich.cesolver.automata.StringSeqAutomaton.arraySplitter
import ap.parser.ITerm
import ostrich.cesolver.util.ParikhUtil.sumVec
import ostrich.cesolver.util.ParikhUtil
import java.time.LocalDate
import java.io.File
import ostrich.cesolver.util.DotWriter

object StringSeqAutomaton {
  val arraySplitter: Int = 65536 // since the alphabet is from 0 to 65535

  def isSeqResult(word: Seq[Int]): Boolean = { word.contains(arraySplitter) }

  def isStringResult(word: Seq[Int]): Boolean = { !isSeqResult(word) }

  def toSeqResult(word: Seq[Int]): Seq[Seq[Int]] = {
    val result = new ArrayBuffer[Seq[Int]]
    var current = new ArrayBuffer[Int]
    for (c <- word) {
      if (c == arraySplitter) {
        result += current
        current = new ArrayBuffer[Int]
      } else { current += c }
    }
    result
  }

  def makeAnySeq(): StringSeqAutomaton = {
    val aut = new StringSeqAutomaton
    val initialState = aut.initialState
    aut.addTransition(initialState, (Char.MinValue, Char.MaxValue), initialState, Seq())
    aut.addSeqElementConnect(initialState, initialState, Seq())
    aut.setAccept(initialState, true)
    aut
  }
}

class StringSeqAutomaton extends CostEnrichedAutomatonBase {

  protected var seqElementConnect = new MHashMap[State, MHashSet[(State, Update)]]()
  protected var arrayElementConnectReverse = new MHashMap[State, MHashSet[(State, Update)]]()

  def addSeqElementConnect(from: State, to: State, update: Update): Unit = {
    seqElementConnect.getOrElseUpdate(from, new MHashSet[(State, Update)]) += ((to, update))
    arrayElementConnectReverse.getOrElseUpdate(to, new MHashSet[(State, Update)]) +=
      ((from, update))
  }

  def nextSeqElements(s: State): Iterable[(State, Update)] = seqElementConnect.get(s)
    .getOrElse(Set())

  def previousSeqElements(s: State): Iterable[(State, Update)] = arrayElementConnectReverse.get(s)
    .getOrElse(Set())

  def removeDeadStates(): StringSeqAutomaton = {
    val result = new StringSeqAutomaton
    val old2new = states.map(s => s -> result.newState()).toMap
    val workstack = new MStack[State]
    val visited = new MHashSet[State]
    for (s <- acceptingStates) {
      workstack.push(s)
      result.setAccept(old2new(s), true)
    }
    while (workstack.nonEmpty) {
      val state = workstack.pop()
      visited += state
      // automaton transitions
      for ((from, l, v) <- incomingTransitions(state)) {
        if (!visited.contains(from)) { workstack.push(from) }
        result.addTransition(old2new(from), l, old2new(state), v)
      }
      // array element connections
      for ((from, v) <- previousSeqElements(state)) {
        if (!visited.contains(from)) { workstack.push(from) }
        result.addSeqElementConnect(old2new(from), old2new(state), v)
      }
    }
    result.initialState = old2new(initialState)

    result.registers = registers
    result.regsRelation = regsRelation
    result
  }

  def &(that: Automaton): Automaton = {
    val thatAut = that.asInstanceOf[StringSeqAutomaton]
    val result = new StringSeqAutomaton
    val pair2state = new MHashMap[(State, State), State]
    val workstack = new MStack[(State, State)]
    pair2state += ((this.initialState, thatAut.initialState) -> result.initialState)
    workstack.push((this.initialState, thatAut.initialState))

    while (workstack.nonEmpty) {
      ap.util.Timeout.check
      val (from1, from2) = workstack.pop()
      val from = pair2state((from1, from2))
      if (this.isAccept(from1) && thatAut.isAccept(from2)) { result.setAccept(from, true) }
      for (
        (to1, l1, v1) <- this.outgoingTransitions(from1);
        (to2, l2, v2) <- thatAut.outgoingTransitions(from2)
      ) {
        this.LabelOps.intersectLabels(l1, l2) match {
          case Some(label) => {
            val to = pair2state.getOrElseUpdate(
              (to1, to2), {
                workstack.push((to1, to2)) // only push when it is new
                result.newState()
              }
            )
            result.addTransition(from, label, to, v1 ++ v2)
          }
          case _ => // do nothing
        }
      }
      for (
        (to1, v1) <- this.nextSeqElements(from1);
        (to2, v2) <- thatAut.nextSeqElements(from2)
      ) {
        val to = pair2state.getOrElseUpdate(
          (to1, to2), {
            workstack.push((to1, to2)) // only push when it is new
            result.newState()
          }
        )
        result.addSeqElementConnect(from, to, v1 ++ v2)
      }
    }
    result.regsRelation =
      connectSimplify(Seq(this.regsRelation, thatAut.regsRelation), IBinJunctor.And)
    result.registers = this.registers ++ thatAut.registers
    result.toDot("and")
    result.removeDeadStates().toDot("and-after-remove")
    result.removeDeadStates()
  }

  override lazy val states: Iterable[State] = {
    val visited = new MHashSet[State]
    val worklist = new MStack[State]
    worklist.push(initialState)
    visited += initialState
    while (worklist.nonEmpty) {
      val state = worklist.pop()
      for ((to, _) <- outgoingTransitionsWithoutLabel(state) if !visited.contains(to)) {
        worklist.push(to)
        visited += to
      }
    }
    visited
  }

  override def outgoingTransitionsWithoutLabel(s: State): Iterable[(State, Seq[Int])] = {
    outgoingTransitions(s).map { case (to, _, vec) => (to, vec) } ++ nextSeqElements(s)
  }

  override def incomingTransitionsWithoutLabel(s: State): Iterable[(State, Seq[Int])] = {
    incomingTransitions(s).map { case (from, _, vec) => (from, vec) } ++ previousSeqElements(s)
  }

  // get accepted word when the registers is empty
  override def getAcceptedWord: Option[Seq[Int]] = {
    assert(registers.isEmpty)
    val visited = new MHashSet[State]
    val worklist = new MStack[(State, Seq[Int])]
    worklist.push((initialState, Seq()))
    visited += initialState
    while (worklist.nonEmpty) {
      val (state, word) = worklist.pop()
      // always add the arraySplitter in the end
      if (isAccept(state)) { return Some(word :+ arraySplitter) }
      for ((to, label, _) <- outgoingTransitions(state) if !visited.contains(to)) {
        worklist.push((to, word :+ label._1.toInt))
        visited += to
      }
      for ((to, _) <- nextSeqElements(state) if !visited.contains(to)) {
        worklist.push((to, word :+ arraySplitter))
        visited += to
      }
    }
    None
  }

  override def getAcceptedWordByRegisters(registersModel: Map[ITerm, Int]): Option[Seq[Int]] = {
    if (registers.isEmpty) return getAcceptedWord
    val registersValues = registers.map(registersModel(_))
    // the state is (s, registersValues)
    val visited = new MHashSet[(State, Seq[Int])]
    // the worklist is a stack of (state, registersValues, word)
    val worklist = new MStack[(State, Seq[Int], Seq[Int])]
    worklist.push((initialState, Seq.fill(registers.size)(0), Seq()))
    visited += ((initialState, Seq.fill(registers.size)(0)))
    while (worklist.nonEmpty) {
      ap.util.Timeout.check
      val (state, regsVal, word) = worklist.pop()
      // always add the arraySplitter in the end
      if (isAccept(state) && regsVal == registersValues) return Some(word :+ arraySplitter)
      val sortedByVecSum = outgoingTransitions(state).toSeq.sortBy(_._3.sum).reverse
      for ((to, label, vec) <- sortedByVecSum if !visited.contains((to, regsVal))) {
        val newRegsVal = sumVec(regsVal, vec)
        if (newRegsVal.zip(regsVal).forall(r => r._1 <= r._2)) {
          worklist.push((to, newRegsVal, word :+ label._1.toInt))
          visited += ((to, newRegsVal))
        }
      }
      for ((to, vec) <- nextSeqElements(state) if !visited.contains((to, regsVal))) {
        val newRegsVal = sumVec(regsVal, vec)
        if (newRegsVal.zip(regsVal).forall(r => r._1 <= r._2)) {
          worklist.push((to, regsVal, word :+ arraySplitter))
          visited += ((to, regsVal))
        }
      }
    }
    None
  }

  // check if the automaton is empty (not considering the registers)
  def isEmpty: Boolean = {
    val visited = new MHashSet[State]
    val worklist = new ArrayBuffer[State]
    val initialState = this.initialState
    worklist += initialState
    while (worklist.nonEmpty) {
      val state = worklist.head
      worklist -= state
      visited += state
      if (this.isAccept(state)) { return false }
      for ((to, _, _) <- outgoingTransitions(state) if !visited.contains(to)) { worklist += to }
      for ((to, _) <- nextSeqElements(state) if !visited.contains(to)) { worklist += to }
    }
    true
  }

  def toDot(suffix: String): Unit = {
    if (!ParikhUtil.debugOpt) return
    states.zipWithIndex.toMap
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
        ${s} -> ${t} [label = \"${left.toInt},${right.toInt}:(${vec.mkString(",")})\"]""")
    }
    for ((s, t) <- seqElementConnect) {
      strbuilder.append(s"""
        ${s} -> ${t} [label = \"array\"]""")
    }
    strbuilder.append("\n")
    strbuilder.append(s"""        \"${registers.mkString(", ")}\" [shape=plaintext]""")
    strbuilder.append("\n      }")
    writer.closeAfterWrite(strbuilder.toString())
  }

  // non-implemented methods /////////////////////////////////
  def |(that: ostrich.automata.Automaton): ostrich.automata.Automaton = ???
  def apply(word: Seq[Int]): Boolean = ???
  def unary_! : Automaton = ???
  // non-implemented methods /////////////////////////////////

}
