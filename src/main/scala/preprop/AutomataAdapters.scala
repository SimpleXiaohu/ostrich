/*
 * This file is part of Sloth, an SMT solver for strings.
 * Copyright (C) 2018  Matthew Hague, Philipp Ruemmer
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
 */

package strsolver.preprop

import scala.collection.mutable.{HashMap => MHashMap}

object InitFinalAutomaton {
  def setInitial[A <: AtomicStateAutomaton](aut : A, initialState : A#State) =
    aut match {
      case InitFinalAutomaton(a, oldInit, oldFinal) =>
        InitFinalAutomaton(a, initialState, oldFinal)
      case _ =>
        InitFinalAutomaton(
          aut, initialState,
          aut.acceptingStates.
          asInstanceOf[Set[AtomicStateAutomaton#State]]
        )
    }

  def setFinal[A <: AtomicStateAutomaton](aut : A, acceptingStates : Set[AtomicStateAutomaton#State]) =
    aut match {
      case InitFinalAutomaton(a, oldInit, oldFinal) =>
        InitFinalAutomaton(a, oldInit, acceptingStates)
      case _ =>
        InitFinalAutomaton(aut, aut.initialState, acceptingStates)
    }

  def intern(a : Automaton) : Automaton = a match {
    case a : InitFinalAutomaton[_] => a.internalise
    case a => a
  }
}

case class InitFinalAutomaton[A <: AtomicStateAutomaton]
                             (underlying : A,
                              val _initialState : A#State,
                              val _acceptingStates : Set[A#State])
     extends AtomicStateAutomaton {
  import InitFinalAutomaton.intern

  type State = underlying.State
  type TLabel = underlying.TLabel
  override val LabelOps = underlying.LabelOps

  def |(that : Automaton) : Automaton =
    intern(this) | intern(that)
  def &(that : Automaton) : Automaton =
    intern(this) & intern(that)

  def isEmpty : Boolean =
    !AutomataUtils.areConsistentAtomicAutomata(List(this))

  def apply(word : Seq[Int]) : Boolean =
    throw new UnsupportedOperationException

  def getAcceptedWord : Option[Seq[Int]] =
    internalise.getAcceptedWord

  val initialState = _initialState.asInstanceOf[State]
  val acceptingStates = _acceptingStates.asInstanceOf[Set[State]]

  def states = underlying.states

  lazy val labelEnumerator = underlying.labelEnumerator

  def outgoingTransitions(from : State) : Iterator[(State, TLabel)] =
    underlying.outgoingTransitions(from)

  def getTransducerBuilder : AtomicStateTransducerBuilder[State, TLabel] =
    underlying.getTransducerBuilder

  def isAccept(s : State) : Boolean =
    acceptingStates contains s

  def getBuilder : AtomicStateAutomatonBuilder[State, TLabel] =
    underlying.getBuilder

  def internalise : AtomicStateAutomaton = {
    val builder = underlying.getBuilder
    val smap = new MHashMap[underlying.State, underlying.State]

    for (s <- states)
      smap.put(s, builder.getNewState)

    for (s <- states) {
      val t = smap(s)
      for ((to, label) <- outgoingTransitions(s))
        builder.addTransition(t, label, smap(to))
      builder.setAccept(t, isAccept(s))
    }

    builder.setInitialState(smap(initialState))

    builder.getAutomaton
  }

}