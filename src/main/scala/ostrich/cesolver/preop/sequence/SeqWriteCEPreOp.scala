package ostrich.cesolver.preop.sequence

import ap.parser.ITerm
import ostrich.cesolver.preop.CEPreOp
import ostrich.automata.Automaton
import ostrich.cesolver.preop.sequence.SeqLenCEPreOp.seqLengthPreimage
import ostrich.cesolver.automata.StringSeqAutomaton
import ostrich.cesolver.automata.StringSeqInitFinalAutomaton.setFinal
import ostrich.cesolver.automata.StringSeqInitFinalAutomaton.setInitial
import ap.parser.IBinJunctor
import ostrich.cesolver.automata.CostEnrichedAutomaton
import ap.parser.IExpression._
import ostrich.cesolver.automata.BricsAutomatonWrapper
import ostrich.cesolver.util.TermGenerator

object SeqWriteCEPreOp {
  def apply(i: ITerm) = new SeqWriteCEPreOp(i)
}

/** Pre-operator for seq.write
  */
class SeqWriteCEPreOp(i: ITerm) extends CEPreOp {
  override def toString = "seqWriteCEPreOp"

  /** The automaton that accepts string sequences of length 1 and the element is all strings in the alphabet.
    */
  private def oneAnyStrSeqAut(): StringSeqAutomaton = {
    val res = new StringSeqAutomaton
    val acceptedS = res.newState()
    res.addSeqElementConnect(res.initialState, acceptedS, Seq())
    res.addTransition(acceptedS, res.LabelOps.sigmaLabel, acceptedS, Seq())
    res.setAccept(acceptedS, true)
    res.registers = Seq()
    res
  }

  /** Extract the element from the sequence automaton with only one element.
    */
  private def oneElemSeq2elem(aut: StringSeqAutomaton): CostEnrichedAutomaton = {
    val res = new CostEnrichedAutomaton
    val old2new = aut.states.map(s => s -> res.newState()).toMap
    for ((s, l, t, v) <- aut.transitions)
      res.addTransition(old2new(s), l, old2new(t), v)
    for (s <- aut.acceptingStates)
      res.setAccept(old2new(s), true)
    for ((s, _) <- aut.nextSeqElements(aut.initialState))
      res.initialState = old2new(s)
    res.registers = Seq.fill(aut.registers.length)(TermGenerator().registerTerm)
    res.regsRelation = aut.regsRelation
    res
  }

  def apply(
    argumentConstraints: Seq[Seq[Automaton]],
    resultConstraint: Automaton
  ): (Iterator[Seq[Automaton]], Seq[Seq[Automaton]]) = {

    import StringSeqAutomaton._

    val res = resultConstraint.asInstanceOf[StringSeqAutomaton]

    val preimages = (for (s <- res.states) yield {
      // before the index
      val pre = (seqLengthPreimage(i) & setFinal(res, Set(s))).asInstanceOf[StringSeqAutomaton]
      // in and after the index
      val after = setInitial(res, s)
      for (s <- after.states) yield {
        // in the index
        val in = (oneAnyStrSeqAut() & setFinal(after, Set(s))).asInstanceOf[StringSeqAutomaton]
        val strIn = oneElemSeq2elem(in)
        // after the index
        val post = (setInitial(after, s) & makeAnySeq()).asInstanceOf[StringSeqAutomaton]
        if (pre.isEmpty | in.isEmpty | post.isEmpty) Seq()
        else {
          val preImageIn = {
            val res = new StringSeqAutomaton
            val acceptedS = res.newState()
            val emptyUpdate = Seq.fill(in.registers.length)(0)
            for ((_, v) <- in.nextSeqElements(in.initialState))
              res.addSeqElementConnect(res.initialState, acceptedS, v)
            res.addTransition(acceptedS, res.LabelOps.sigmaLabel, acceptedS, emptyUpdate)
            res.setAccept(acceptedS, true)
            res.registers = Seq()     // not used, we only use transitions to connect
            res
          }
          // check if we introduce a new register in pre
          val haveNewRegister = pre.registers.size > post.registers.size
          // preImage = pre ++ preImageIn ++ post
          val preImage = new StringSeqAutomaton
          val old2new = (pre.states ++ preImageIn.states ++ post.states).map(s => s -> preImage.newState()).toMap
          // copy the transitions in pre, preImageIn, and post
          for (s <- pre.states) {
            for ((t, l, v) <- pre.outgoingTransitions(s)) {
              preImage.addTransition(old2new(s), l, old2new(t), v)
            }
            for ((t, v) <- pre.nextSeqElements(s)) {
              preImage.addSeqElementConnect(old2new(s), old2new(t), v)
            }
          }
          val preV = if (haveNewRegister) Seq(0) else Seq()
          for (s <- preImageIn.states) {
            for ((t, l, v) <- preImageIn.outgoingTransitions(s)) {
              preImage.addTransition(old2new(s), l, old2new(t), preV ++ v)
            }
            for ((t, v) <- preImageIn.nextSeqElements(s)) {
              preImage.addSeqElementConnect(old2new(s), old2new(t), preV ++ v)
            }
          }
          for (s <- post.states) {
            for ((t, l, v) <- post.outgoingTransitions(s)) {
              preImage.addTransition(old2new(s), l, old2new(t), preV ++ v)
            }
            for ((t, v) <- post.nextSeqElements(s)) {
              preImage.addSeqElementConnect(old2new(s), old2new(t), preV ++ v)
            }
          }
          // connect them
          for (s <- post.acceptingStates)
            preImage.setAccept(old2new(s), true)
          for (s <- preImageIn.acceptingStates)
            preImage.addEpsilon(old2new(s), old2new(post.initialState))
          for (s <- pre.acceptingStates)
            preImage.addEpsilon(old2new(s), old2new(preImageIn.initialState))
          preImage.initialState = old2new(pre.initialState)
          preImage.registers = pre.registers
          val preRegisters = if (haveNewRegister) pre.registers.tail else pre.registers
          val updateResRegisterF = connectSimplify(
            (preRegisters zip strIn.registers zip res.registers).map { case ((reg1, reg2), res) =>
              reg1 + reg2 === res
            },
            IBinJunctor.And
          )
          strIn.regsRelation = connectSimplify(
            Seq(res.regsRelation, updateResRegisterF, pre.regsRelation),
            IBinJunctor.And
          )
          Seq(preImage, BricsAutomatonWrapper.makeAnyString(), strIn)
        }
      }
    }).flatten
    (preimages.filterNot(_.isEmpty).iterator, Seq())
  }

  /** Evaluate the described function; return <code>None</code> if the function is not defined for the given arguments.
    */
  def eval(arguments: Seq[Seq[Int]]): Option[Seq[Int]] = {
    import StringSeqAutomaton._
    val beforeWrite = toSeqResult(arguments(0)).toArray
    val index = arguments(1).head
    val element = arguments(2)
    beforeWrite.update(index, element)
    Some(beforeWrite.foldLeft(Seq(seqSplitter))((spl, el) => spl ++ el :+ seqSplitter))
  }
}
