/** This file is part of Ostrich, an SMT solver for strings. Copyright (c) 2023 Denghang Hu. All rights reserved.
  *
  * Redistribution and use in source and binary forms, with or without modification, are permitted provided that the
  * following conditions are met:
  *
  * * Redistributions of source code must retain the above copyright notice, this list of conditions and the following
  * disclaimer.
  *
  * * Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the
  * following disclaimer in the documentation and/or other materials provided with the distribution.
  *
  * * Neither the name of the authors nor the names of their contributors may be used to endorse or promote products
  * derived from this software without specific prior written permission.
  *
  * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES,
  * INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
  * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
  * SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
  * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
  * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
  * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  */

package ostrich.cesolver.automata
import scala.collection.mutable.{HashMap => MHashMap, HashSet => MHashSet, Stack => MStack, MultiMap => MMultiMap, Set => MSet, LinkedHashSet => MLinkedHashSet}
import ostrich.automata.TLabelOps
import ostrich.automata.BricsTLabelOps
import ostrich.automata.Transducer._
import ostrich.cesolver.util.ParikhUtil.{log, sumVec}
import ostrich.cesolver.automata.StringSeqAutomaton.seqSplitter
import ostrich.cesolver.util.DotWriter
import ostrich.cesolver.util.ParikhUtil
import java.io.File
import java.time.LocalDate

object CETransducer {
  type State  = CostEnrichedAutomatonBase#State
  type TLabel = CostEnrichedAutomatonBase#TLabel

  // replace the input character with a sequence connector
  case object ToSeqConnector extends InputOp

  /** Transducer that eats every input and produces no output.
    */
  lazy val SilentTransducer: CETransducer = {

    val ceTran = new CETransducer

    ceTran.setAccept(ceTran.initialState, true)

    ceTran.addTransition(ceTran.initialState, ceTran.LabelOps.sigmaLabel, OutputOp("", NOP, ""), ceTran.initialState)

    ceTran
  }
}

class CETransducer {
  import CETransducer._

  type TTransition  = (TLabel, OutputOp, State)
  type TETransition = (OutputOp, State) // epsilon transition
  type TCTransition = (OutputOp, State) // connector transition

  trait TransitionType
  case class TTransitionType(t: TTransition)   extends TransitionType
  case class TETransitionType(t: TETransition) extends TransitionType
  case class TCTransitionType(t: TCTransition) extends TransitionType

  private var stateidx                                          = 0
  private var _initialState: State                              = newState()
  private val _lblTrans: MHashMap[State, MHashSet[TTransition]] = MHashMap()
  private val _eTrans: MHashMap[State, MHashSet[TETransition]]  = MHashMap()
  private val _cTrans: MHashMap[State, MHashSet[TCTransition]]  = MHashMap()
  private val _acceptingStates: MHashSet[State]                 = MHashSet()

  private def label(t: TTransition)      = t._1
  private def operation(t: TTransition)  = t._2
  private def operation(t: TETransition) = t._1

  private def dest(t: TTransition): State  = t._3
  private def dest(t: TETransition): State = t._2

  private def dest(t: TransitionType): State = t match {
    case TTransitionType(lblTran) => dest(lblTran)
    case TETransitionType(eTran)  => dest(eTran)
    case TCTransitionType(cTran)  => dest(cTran)
  }

  val LabelOps: TLabelOps[TLabel] = BricsTLabelOps

  def isAccept(s: State) = _acceptingStates.contains(s)

  def newState(): State = synchronized {
    stateidx += 1
    new State() {
      val idx = stateidx
      override def toString(): String =
        s"s${idx}"
    }
  }

  def setAccept(s: State, isAccept: Boolean) = if (isAccept) _acceptingStates += s
  def initialState_=(s: State)               = _initialState = s
  def initialState                           = _initialState

  def addTransition(from: State, lbl: TLabel, op: OutputOp, to: State) =
    _lblTrans.get(from) match {
      case Some(set) => set.add((lbl, op, to))
      case None      => _lblTrans.put(from, MHashSet((lbl, op, to)))
    }

  def addETransition(from: State, op: OutputOp, to: State) =
    _eTrans.get(from) match {
      case Some(set) => set.add((op, to))
      case None      => _eTrans.put(from, MHashSet((op, to)))
    }

  def addCTransition(from: State, op: OutputOp, to: State) =
    _cTrans.get(from) match {
      case Some(set) => set.add((op, to))
      case None      => _cTrans.put(from, MHashSet((op, to)))
    }

  def removeDeadStates() = {
    log("CETransducer: remove dead states")
    def dest(t: TTransition): State   = t._3
    def edest(t: TETransition): State = t._2
    def cdest(t: TCTransition): State = t._2

    val fwdReach = new MHashSet[State]
    val bwdMap   = new MHashMap[State, MSet[State]] with MMultiMap[State, State]
    val worklist = new MStack[State]

    fwdReach += _initialState
    worklist.push(_initialState)

    while (!worklist.isEmpty) {
      val s = worklist.pop
      for (trans <- _lblTrans.get(s); t <- trans) {
        val snext = dest(t)
        bwdMap.addBinding(snext, s)
        if (fwdReach.add(snext))
          worklist.push(snext)
      }
      for (trans <- _eTrans.get(s); t <- trans) {
        val snext = edest(t)
        bwdMap.addBinding(snext, s)
        if (fwdReach.add(snext))
          worklist.push(snext)
      }
      for (trans <- _cTrans.get(s); t <- trans) {
        val snext = cdest(t)
        bwdMap.addBinding(snext, s)
        if (fwdReach.add(snext))
          worklist.push(snext)
      }
    }

    val bwdReach = new MHashSet[State]

    for (s <- fwdReach; if isAccept(s)) {
      bwdReach += s
      worklist.push(s)
    }

    while (!worklist.isEmpty) {
      val s = worklist.pop

      for (
        snexts <- bwdMap.get(s);
        snext  <- snexts;
        if fwdReach.contains(snext)
      )
        if (bwdReach.add(snext))
          worklist.push(snext)
    }

    _acceptingStates.retain(bwdReach.contains(_))
    _lblTrans.retain((k, _) => bwdReach.contains(k))
    _eTrans.retain((k, _) => bwdReach.contains(k))
    _cTrans.retain((k, _) => bwdReach.contains(k))
    _lblTrans.foreach { case (_, v) =>
      v.retain(t => bwdReach.contains(dest(t)))
    }
    _eTrans.foreach { case (_, v) =>
      v.retain(t => bwdReach.contains(edest(t)))
    }
    _cTrans.foreach { case (_, v) =>
      v.retain(t => bwdReach.contains(cdest(t)))
    }
  }

  def preImage(
      aut: CostEnrichedAutomatonBase,
      internals: Iterable[(State, State, Seq[Int])] = Iterable(),
      isSeqPreImage: Boolean = false
  ): CostEnrichedAutomatonBase = {
    log("Computing pre-image of transducer")

    trait PreImageLabelType
    case class CharInterval(min: Char, max: Char) extends PreImageLabelType
    case class SeqConnector()                     extends PreImageLabelType

    // when working through a transition ..
    abstract class Mode
    // .. either doing pre part (u remains to do)
    case class Pre(u: Seq[Char]) extends Mode
    // .. applying operation
    case object Op extends Mode
    // .. or working through post part, once done any new transition
    // added to pre-image aut should have label lbl
    case class Post(u: Seq[Char], lbl: PreImageLabelType) extends Mode
    // post part for adding etran
    case class EPost(u: Seq[Char]) extends Mode

    val preImageAut = if (isSeqPreImage)
      new StringSeqAutomaton
    else
      new CostEnrichedAutomaton
    preImageAut.registers = aut.registers
    preImageAut.regsRelation = aut.regsRelation

    val emptyVec     = Seq.fill(aut.registers.size)(0)
    val epsilonPairs = new MHashSet[(State, State, Seq[Int])]

    val internalMap =
      new MHashMap[State, MSet[(State, Seq[Int])]]
        with MMultiMap[State, (State, Seq[Int])] {
        override def default(q: State): MSet[(State, Seq[Int])] =
          MLinkedHashSet()
      }

    for ((s1, s2, vec) <- internals)
      internalMap.addBinding(
        s1.asInstanceOf[State],
        (s2.asInstanceOf[State], vec)
      )

    // map states of pre-image aut to state of transducer and state of
    // aut
    val sMap    = new MHashMap[State, (State, State)]
    val sMapRev = new MHashMap[(State, State), State]

    sMap += (preImageAut.initialState            -> ((_initialState, aut.initialState)))
    sMapRev += (_initialState, aut.initialState) -> preImageAut.initialState

    // (ps, ts, t, as, v, m)
    // state of pre aut to add new transitions from
    // current state of transducer reached
    // transition being processed
    // current state of target aut reached
    // mode as above
    val worklist = new MStack[
      (State, State, TransitionType, State, Seq[Int], Mode)
    ]
    val seenlist = new MHashSet[
      (State, State, TransitionType, State, Seq[Int], Mode)
    ]

    // get corresponding preimage state from (transducer state, automaton state)
    def getState(ts: State, as: State): State =
      sMapRev.getOrElse(
        (ts, as), {
          val ps = preImageAut.newState()
          sMapRev += ((ts, as) -> ps)
          sMap += (ps          -> (ts, as))
          ps
        }
      )

    def addWork(
        ps: State,
        ts: State,
        t: TransitionType,
        as: State,
        vec: Seq[Int],
        m: Mode
    ): Unit =
      if (!seenlist.contains((ps, ts, t, as, vec, m))) {
        seenlist += ((ps, ts, t, as, vec, m))
        worklist.push((ps, ts, t, as, vec, m))
      }

    def addEpsilonWithVec(ps: State, pt: State, vec: Seq[Int]) {
      if (preImageAut.isAccept(pt)) preImageAut.setAccept(ps, true)
      for ((to, lbl, pVec) <- preImageAut.outgoingTransitions(pt))
        preImageAut.addTransition(ps, lbl, to, sumVec(vec, pVec))
    }

    def reachStates(ts: State, as: State): Unit = {
      val ps = getState(ts, as)
      if (isAccept(ts) && aut.isAccept(as))
        preImageAut.setAccept(ps, true)

      for (trans <- _lblTrans.get(ts); t <- trans) {
        val tOp = operation(t)
        if (tOp.preW.isEmpty)
          addWork(ps, ts, TTransitionType(t), as, emptyVec, Op)
        else
          addWork(ps, ts, TTransitionType(t), as, emptyVec, Pre(tOp.preW))
      }

      for (trans <- _eTrans.get(ts); t <- trans) {
        val tOp = operation(t)
        if (tOp.preW.isEmpty)
          addWork(ps, ts, TETransitionType(t), as, emptyVec, Op)
        else
          addWork(ps, ts, TETransitionType(t), as, emptyVec, Pre(tOp.preW))
      }

      for (trans <- _cTrans.get(ts); t <- trans) {
        val tOp = operation(t)
        if (tOp.preW.isEmpty)
          addWork(ps, ts, TCTransitionType(t), as, emptyVec, Op)
        else
          addWork(ps, ts, TCTransitionType(t), as, emptyVec, Pre(tOp.preW))
      }
    }

    reachStates(_initialState, aut.initialState)

    while (!worklist.isEmpty) {
      // pre aut state, transducer state, automaton state
      val (ps, ts, t, as, vec, m) = worklist.pop()

      m match {
        case Pre(u) if u.isEmpty =>
          // should never happen
          throw new Exception(
            "When computing pre-image of CETransducer: should never happen"
          )
        case Pre(u) if !u.isEmpty =>
          val a    = u.head
          val rest = u.tail
          for ((asNext, albl, asVec) <- aut.outgoingTransitions(as))
            if (aut.LabelOps.labelContains(a, albl)) {
              if (!rest.isEmpty) {
                addWork(ps, ts, t, asNext, sumVec(vec, asVec), Pre(rest))
              } else {
                addWork(ps, ts, t, asNext, sumVec(vec, asVec), Op)
              }
            }
        case Op =>
          t match {
            case TTransitionType(lblTran) =>
              val tOp        = operation(lblTran)
              val (min, max) = label(lblTran)
              tOp.op match {
                case NOP =>
                  addWork(ps, ts, t, as, vec, Post(tOp.postW, CharInterval(min, max)))
                case Internal =>
                  for ((asNext, asVec) <- internalMap(as))
                    addWork(ps, ts, t, asNext, sumVec(vec, asVec), Post(tOp.postW, CharInterval(min, max)))
                case Plus(n) =>
                  for ((asNext, albl, asVec) <- aut.outgoingTransitions(as)) {
                    val shftLbl = aut.LabelOps.shift(albl, -n)
                    if (aut.LabelOps.isNonEmptyLabel(shftLbl)) {
                      for ((preMin, preMax) <- aut.LabelOps.intersectLabels(shftLbl, (min, max)))
                        addWork(ps, ts, t, asNext, sumVec(vec, asVec), Post(tOp.postW, CharInterval(preMin, preMax)))
                    }
                  }
                case ToSeqConnector =>
                  val seqAut = aut.asInstanceOf[StringSeqAutomaton]
                  for ((asNext, asVec) <- seqAut.nextSeqElements(as))
                    addWork(ps, ts, t, asNext, sumVec(vec, asVec), Post(tOp.postW, CharInterval(min, max)))
              }

            case TCTransitionType(cTran) =>
              val tOp = operation(cTran)
              tOp.op match {
                case NOP =>
                  addWork(ps, ts, t, as, vec, Post(tOp.postW, SeqConnector()))
                case Internal =>
                  for ((asNext, asVec) <- internalMap(as))
                    addWork(ps, ts, t, asNext, sumVec(vec, asVec), Post(tOp.postW, SeqConnector()))
                case ToSeqConnector =>
                  val seqAut = aut.asInstanceOf[StringSeqAutomaton]
                  for ((asNext, asVec) <- seqAut.nextSeqElements(as))
                    addWork(ps, ts, t, asNext, sumVec(vec, asVec), Post(tOp.postW, SeqConnector()))
                case _ =>
                  throw new Exception("CETransducer: connector transition should not have other operation")
              }

            case TETransitionType(eTran) =>
              val tOp = operation(eTran)
              tOp.op match {
                case NOP =>
                  // deleting an e-label means doing nothing
                  addWork(ps, ts, t, as, vec, EPost(tOp.postW))
                case Internal =>
                  for ((asNext, asVec) <- internalMap(as))
                    addWork(ps, ts, t, asNext, sumVec(vec, asVec), EPost(tOp.postW))
                case Plus(_) =>
                  // treat as delete -- can't shift e-tran
                  addWork(ps, ts, t, as, vec, EPost(tOp.postW))
                case ToSeqConnector =>
                  val seqAut = aut.asInstanceOf[StringSeqAutomaton]
                  for ((asNext, asVec) <- seqAut.nextSeqElements(as))
                    addWork(ps, ts, t, asNext, sumVec(vec, asVec), EPost(tOp.postW))
              }
          }
        case Post(v, preimageLabel) if !v.isEmpty =>
          val a    = v.head
          val rest = v.tail
          for ((asNext, albl, asVec) <- aut.outgoingTransitions(as))
            if (aut.LabelOps.labelContains(a, albl))
              addWork(ps, ts, t, asNext, sumVec(vec, asVec), Post(rest, preimageLabel))

        case Post(v, CharInterval(min, max)) if v.isEmpty =>
          val tsNext = dest(t)
          val psNext = getState(dest(t), as)

          preImageAut.addTransition(ps, (min, max), psNext, vec)
          reachStates(tsNext, as)

        case Post(v, SeqConnector()) if v.isEmpty =>
          val tsNext = dest(t)
          val psNext = getState(dest(t), as)

          preImageAut.asInstanceOf[StringSeqAutomaton].addSeqElementConnect(ps, psNext, vec)
          reachStates(tsNext, as)

        case EPost(v) if !v.isEmpty =>
          val a    = v.head
          val rest = v.tail
          for ((asNext, albl, asVec) <- aut.outgoingTransitions(as))
            if (aut.LabelOps.labelContains(a, albl))
              addWork(ps, ts, t, asNext, sumVec(vec, asVec), EPost(rest))

        case EPost(v) if v.isEmpty =>
          val tsNext = dest(t)
          val psNext = getState(dest(t), as)

          epsilonPairs += ((ps, psNext, vec))

          reachStates(tsNext, as)
      }
    }

    for ((ps, pt, vec) <- epsilonPairs)
      addEpsilonWithVec(ps, pt, vec)
    preImageAut.removeDeadStates().toDot("CETransducerPreImage")
    aut.toDot("CETransducerRes")
    preImageAut.removeDeadStates()
  }

  /** Apply the transducer to the input, replacing any internal characters with the given string.
    *
    * Assumes transducer is functional, so returns the first found output
    */
  def apply(input: Seq[Int], internal: Seq[Int] = Seq()): Option[Seq[Int]] = {
    log("Applying transducer to input")
    if (input.size == 0 && isAccept(_initialState))
      return Some(Seq())

    val worklist = new MStack[(State, Int, Seq[Int])]
    val seenlist = new MHashSet[(State, Int)]

    worklist.push((_initialState, 0, Seq()))

    while (!worklist.isEmpty) {
      val (s, pos, output) = worklist.pop

      if (pos < input.size) {
        val a = input(pos)
        if (a <= Char.MaxValue.toInt) {
          for (ts <- _lblTrans.get(s); t <- ts) {
            val pnext = pos + 1
            val snext = dest(t)
            val lbl   = label(t)
            if (LabelOps.labelContains(a.toChar, lbl) && !seenlist.contains((snext, pnext))) {
              val tOp = operation(t)
              val opOut = tOp.op match {
                case NOP      => Seq()
                case Internal => internal
                case Plus(n)  => Seq(a + n)
                case ToSeqConnector => Seq(seqSplitter)
              }
              val outnext =
                output ++ tOp.preW.map(_.toInt) ++ opOut ++ tOp.postW.map(_.toInt)
              if (pnext >= input.length && isAccept(snext))
                return Some(outnext)
              worklist.push((snext, pnext, outnext))
            }
          }
        } else {
          for (ts <- _cTrans.get(s); t <- ts) {
            val pnext = pos + 1
            val snext = dest(t)
            if (!seenlist.contains((snext, pnext))) {
              val tOp = operation(t)
              val opOut = tOp.op match {
                case NOP      => Seq()
                case Internal => internal
                case ToSeqConnector => Seq(seqSplitter)
                // treat as delete
                case Plus(_)  => Seq()
              }
              val outnext =
                output ++ tOp.preW.map(_.toInt) ++ opOut ++ tOp.postW.map(_.toInt)
              if (pnext >= input.length && isAccept(snext))
                return Some(outnext)
              worklist.push((snext, pnext, outnext))
            }
          }
        }
      }

      for (ts <- _eTrans.get(s); t <- ts) {
        val pnext = pos
        val snext = dest(t)
        if (!seenlist.contains((snext, pnext))) {
          val tOp = operation(t)
          val opOut = tOp.op match {
            case NOP      => Seq()
            case Internal => internal
            // treat as delete
            case Plus(_) => Seq()
          }
          val outnext = output ++ tOp.preW.map(_.toInt) ++ opOut ++ tOp.postW.map(_.toInt)
          if (pnext >= input.length && isAccept(snext))
            return Some(outnext)
          worklist.push((snext, pnext, outnext))
        }
      }
    }

    return None
  }

  override def toString =
    "init: " + _initialState + "\n" +
      "finals: " + _acceptingStates + "\n" +
      _lblTrans.mkString("\n") +
      _eTrans.mkString("\n")

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
        ${_acceptingStates.mkString(" ")}
        node [shape = circle];
        init -> ${initialState};""")
    for ((state, arrows) <- _lblTrans; ((min, max), op, dest) <- arrows) {
      strbuilder.append(s"""
        ${state} -> ${dest} [label="${(min.toInt, max.toInt)}:${op.op}"];
        """)
    }

    for ((state, arrows) <- _eTrans; (op, dest) <- arrows) {
      strbuilder.append(s"""
        ${state} -> ${dest} [label="epsilon:${op.op}"];
        """)
    }

    for ((state, arrows) <- _cTrans; (op, dest) <- arrows) {
      strbuilder.append(s"""
        ${state} -> ${dest} [label="connector:${op.op}"];
        """)
    }

    strbuilder.append("\n      }")

    writer.closeAfterWrite(strbuilder.toString())
  }

}
