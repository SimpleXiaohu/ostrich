package ostrich.cesolver.preop.sequence

import ostrich.cesolver.preop.CEPreOp
import ostrich.automata.Automaton
import ostrich.cesolver.automata.StringSeqAutomaton
import ap.parser.ITerm
import ap.parser.IExpression
import ap.basetypes.IdealInt
import ostrich.cesolver.util.TermGenerator

trait SeqLenCEPreOpBase extends CEPreOp {
  override def toString = "seqLenCEPreOp"

  /** Evaluate the described function; return <code>None</code> if the function is not defined for the given arguments.
    */
  def eval(arguments: Seq[Seq[Int]]): Option[Seq[Int]] = {
    val sequence = StringSeqAutomaton.toSeqResult(arguments.head)
    val len      = sequence.length
    Some(Seq(len))
  }
}

object SeqLenCEPreOp {
  def apply(len: ITerm): SeqLenCEPreOpBase = len match {
    case IExpression.Const(IdealInt(len)) =>
      new SeqLenCEPreOpConcrete(len)
    case _: ITerm => new SeqLenCEPreOp(len)
  }
}

/**
  * Pre-operator for seq.len, in the case where the length is a constant.
  */
class SeqLenCEPreOpConcrete(len: Int) extends SeqLenCEPreOpBase {
  def apply(
      argumentConstraints: Seq[Seq[Automaton]],
      resultConstraint: Automaton
  ): (Iterator[Seq[Automaton]], Seq[Seq[Automaton]]) = {
    val sigmaLabel  = (Char.MinValue, Char.MaxValue)
    val emptyUpdate = Seq()
    val argAut      = new StringSeqAutomaton
    val states      = Seq.fill(len)(argAut.newState())
    for (i <- 0 until states.length)
      argAut.addTransition(
        states(i),
        sigmaLabel,
        states(i),
        emptyUpdate
      )
    for (i <- 0 until states.length - 1)
      argAut.addSeqElementConnect(
        states(i),
        states(i + 1),
        emptyUpdate
      )
    argAut.setAccept(states(len - 1), true)
    argAut.addSeqElementConnect(states(len - 1), states(len - 1), emptyUpdate)
    argAut.initialState = states(0)
    (Iterator(Seq(argAut)), Seq())
  }
}

/**
  * Pre-operator for seq.len, in the case where the length is a variable.
  */
class SeqLenCEPreOp(len: ITerm) extends SeqLenCEPreOpBase {
  def apply(
      argumentConstraints: Seq[Seq[Automaton]],
      resultConstraint: Automaton
  ): (Iterator[Seq[Automaton]], Seq[Seq[Automaton]]) = {
    val argAut = new StringSeqAutomaton
    val newReg = TermGenerator().registerTerm
    val sigmaLabel = (Char.MinValue, Char.MaxValue)
    val emptyUpdate = Seq(0)
    val updateLen = Seq(1)
    argAut.addTransition(argAut.initialState, sigmaLabel, argAut.initialState, emptyUpdate)
    argAut.addSeqElementConnect(argAut.initialState, argAut.initialState, updateLen)
    argAut.setAccept(argAut.initialState, true)
    argAut.registers = Seq(newReg)
    argAut.regsRelation = newReg === len - 1
    (Iterator(Seq(argAut)), Seq())
  }
}
