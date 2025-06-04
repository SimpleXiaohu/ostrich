package ostrich.cesolver.preop.sequence

import ap.parser.ITerm
import ostrich.cesolver.preop.CEPreOp
import ostrich.cesolver.automata.StringSeqAutomaton
import ostrich.cesolver.util.ParikhUtil.ConstInteger
import ostrich.automata.Automaton
import ostrich.cesolver.preop.PreOpUtil.automatonWithLenSeq
import ostrich.cesolver.preop.sequence.SeqLenCEPreOp.seqLengthPreimage
import ostrich.cesolver.util.TermGenerator
import ostrich.cesolver.preop.sequence.SeqLenCEPreOp.seqLengthLessThanPreimage
import ostrich.cesolver.stringtheory.CESolver
import ap.parser.SymbolCollector
import ap.api.SimpleAPI.ProverStatus
import ap.terfor.Formula
import ap.api.SimpleAPI
import ap.parser.Internal2InputAbsy
import ap.parser.IFormula

object SeqExtractCEPreOp {
  def apply(offset: ITerm, length: ITerm, globalArith: Formula): SeqExtractCEPreOp = new SeqExtractCEPreOp(offset, length, globalArith)
}

/** Pre-operator for seq.extract, in the case where the offset and length are constants.
  */
class SeqExtractCEPreOp(off: ITerm, len: ITerm, globalArith: Formula) extends CEPreOp {
  override def toString = "seqExtractCEPreOp"
  def apply(
      argumentConstraints: Seq[Seq[Automaton]],
      resultConstraint: Automaton
  ): (Iterator[Seq[Automaton]], Seq[Seq[Automaton]]) = {
    // FIXME: Not consider edge cases, e.g. offset > length
    // 0 <= offset < seq.len(preimage) and offset + length <= seq.len(preimage)
    val res = resultConstraint.asInstanceOf[StringSeqAutomaton]
    // before offset
    val pre = seqLengthPreimage(off)
    // in the offset
    val in = (seqLengthPreimage(len) & res).asInstanceOf[StringSeqAutomaton]
    // after offset
    val post = StringSeqAutomaton.makeAnySeq()
    val preimage1 = pre ++ in ++ post 

    // offset >= 0 and offset + length > seq.len(preimage)
    val pre2 = seqLengthPreimage(off)
    val in2 = (seqLengthLessThanPreimage(len) & res).asInstanceOf[StringSeqAutomaton]
    val preimage2 = pre2 ++ in2

    // offset < 0 or length < 0
    val preimage3 = StringSeqAutomaton.makeAnySeq()
    val resRegisterEqual0Formula = res.registers.map(_ === 0).reduceLeftOption(_ & _)
    preimage3.regsRelation = preimage3.regsRelation & (off < 0 | len < 0) & res.regsRelation
    for (f <- resRegisterEqual0Formula) {
      preimage3.regsRelation = preimage3.regsRelation & f
    }

    // offset > seq.len(preimage)
    val preimage4 = seqLengthLessThanPreimage(off)
    preimage4.regsRelation = preimage4.regsRelation & res.regsRelation
    for (f <- resRegisterEqual0Formula) {
      preimage4.regsRelation = preimage4.regsRelation & f
    }

    val nonEmptyResPreimage = Iterator(Seq(preimage1), Seq(preimage2))

    val emptyResPreimage = if (res.isAccept(res.initialState)) {
      var finalPreImage : Iterator[Seq[Automaton]] = Iterator()
      SimpleAPI.withProver{ p =>
        val inputF = Internal2InputAbsy(globalArith)
        p.addConstantsRaw(SymbolCollector.constants(inputF))
        p.addAssertion(inputF)
        def isSat(formula: IFormula): Boolean = {
          val newConstants = SymbolCollector.constants(formula) &~ p.order.orderedConstants
          p.push()
          p.addConstantsRaw(newConstants)
          p.addAssertion(formula)
          val res = p.??? match {
            case ProverStatus.Sat => true 
            case _ => false
          }
          p.pop()
          res
        }

        if (isSat(preimage3.regsRelation)) {
          finalPreImage = finalPreImage ++ Iterator(Seq(preimage3))
        }
        if (isSat(preimage4.regsRelation)) {
          finalPreImage = finalPreImage ++ Iterator(Seq(preimage4))
        }
      }
      finalPreImage
    } else {
      Iterator()
    }



    (nonEmptyResPreimage ++ emptyResPreimage, Seq())
  }

  /** Evaluate the described function; return <code>None</code> if the function is not defined for the given arguments.
    */
  def eval(arguments: Seq[Seq[Int]]): Option[Seq[Int]] = {
    val sequence = StringSeqAutomaton.toSeqResult(arguments.head)
    val offset   = arguments(1)(0)
    val length   = arguments(2)(0)
    if (offset < 0 || offset >= sequence.length || length < 0)
      return Some(Seq(StringSeqAutomaton.seqSplitter))
    val subSeq   = sequence.slice(offset, offset + length)
    // the subSeq is like Seq[Seq[a], Seq[b]], we need to output it as #a#b#
    Some(
      subSeq.foldLeft(Seq(StringSeqAutomaton.seqSplitter)) {
        case (splitter, seq) => splitter ++ seq :+ StringSeqAutomaton.seqSplitter
      }
    )
  }
}

