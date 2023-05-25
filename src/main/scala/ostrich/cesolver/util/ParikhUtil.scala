package ostrich.cesolver.util

import scala.collection.mutable.{
  Map => MMap,
  HashSet => MHashSet,
  HashMap => MHashMap,
  ArrayStack
}
import ostrich.cesolver.automata.CostEnrichedAutomatonBase

import ap.basetypes.IdealInt
import scala.collection.mutable.ArrayBuffer
import ap.api.SimpleAPI
import ap.api.SimpleAPI.ProverStatus
import ap.terfor.linearcombination.LinearCombination
import ostrich.cesolver.core.FinalConstraints
import ap.parser.ITerm
import ap.parser.IExpression._
import ostrich.automata.BricsTLabelOps

object ParikhUtil {
  type State = CostEnrichedAutomatonBase#State
  type TLabel = CostEnrichedAutomatonBase#TLabel

  def measure[A](
      op: String
  )(comp: => A)(implicit manualFlag: Boolean = true): A =
    if (manualFlag)
      ap.util.Timer.measure(op)(comp)
    else
      comp

  def findAcceptedWordByRegistersComplete(
      aut: CostEnrichedAutomatonBase,
      registersModel: MMap[ITerm, IdealInt]
  ): Option[Seq[Int]] = {

    val registersValue = aut.registers.map(registersModel(_).intValue)
    val todoList = new ArrayStack[(State, Seq[Int], Seq[Char])]
    val visited = new MHashSet[(State, Seq[Int])]
    todoList.push(
      (
        aut.initialState,
        Seq.fill(aut.registers.size)(0),
        ""
      )
    )
    visited.add(
      (aut.initialState, Seq.fill(aut.registers.size)(0))
    )
    while (!todoList.isEmpty) {
      val (state, regsVal, word) = todoList.pop
      if (aut.isAccept(state) && regsVal == registersValue) {
        return Some(word.map(_.toInt))
      }
      for ((t, l, v) <- aut.outgoingTransitionsWithVec(state)) {
        val newRegsVal = regsVal.zip(v).map { case (r, v) => r + v }
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

  def findAcceptedWordByRegisters(
      auts: Seq[CostEnrichedAutomatonBase],
      registersModel: MMap[ITerm, IdealInt]
  ): Option[Seq[Int]] = {
    val aut = auts.reduce(_ product _)
    findAcceptedWordByRegistersComplete(aut, registersModel)

  }

   /** find all states pair (s, t, vec) that s ---str--> t and vec is the sum of
    * updates on the transitions
    */
  def partition(
      aut: CostEnrichedAutomatonBase,
      str: Seq[Char]
  ): Iterable[(State, State, Seq[Int])] = {

    val labelOps = BricsTLabelOps

    var pairs: Iterable[(State, State, Seq[Int])] =
      aut.states.map(s => (s, s, Seq.fill(aut.registers.size)(0)))

    var strStack = str
    while (strStack.nonEmpty) {
      val currentChar = strStack.head
      strStack = strStack.tail
      pairs =
        for (
          (s, t, vec) <- pairs;
          (tNext, lNext, vecNext) <- aut.outgoingTransitionsWithVec(t);
          if labelOps.labelContains(currentChar, lNext)
        ) yield (s, tNext, sum(vec, vecNext))
    }
    pairs
  }

  // sum of two Seq
   def sum(v1: Seq[Int], v2: Seq[Int]): Seq[Int] = {
    v1.zip(v2).map { case (x, y) => x + y }
  }

  def getImage(
        aut: CostEnrichedAutomatonBase,
        states: Set[State],
        lbl: TLabel
    ): Set[State] = {
      (for (
        s <- states; (t, lblAut, _) <- aut.outgoingTransitionsWithVec(s);
        if aut.LabelOps.labelsOverlap(lbl, lblAut)
      )
        yield t).toSet
    }


  def debugPrintln(s: Any) = {
    println("Debug: " + s)
  }

  def todo(s:Any) = {
    println("TODO:" + s)
  }
}
