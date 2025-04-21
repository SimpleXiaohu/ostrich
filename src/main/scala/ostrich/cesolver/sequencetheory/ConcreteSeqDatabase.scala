package ostrich.cesolver.sequencetheory

import ostrich.cesolver.stringtheory.CEStringTheory
import scala.collection.mutable.{HashMap => MHashMap}
import ap.parser.{IExpression, IFunApp}
import ap.basetypes.IdealInt
import ap.terfor.Term
import ap.terfor.linearcombination.LinearCombination
import ap.parser.IIntLit
import ap.theories.strings.StringTheory.ConcreteString
import ap.parser.ITerm
import ap.theories.strings.StringTheory
import ap.parser.IConstant

// Database for concrete sequences of strings.
// We assume that seq_cons are only used in concrete sequences.
// (Need to take care when using seq_cons during preprocessing)
class ConcreteSeqDatabase(theory: CEStringTheory) {

  import IExpression._
  import theory.seqTheory.{seq_empty, seq_cons, seq_unit}
  import theory.strDatabase

  private val term2Concrete = new MHashMap[Term, ITerm]


  /** check whether the given term represents a concrete sequence
    */
  def isConcrete(t: Term): Boolean = {
    term2Concrete contains t
  }

  /** Decode the given sequence term to a sequence of sequences of integers
    */
  private def iTerm2SeqHelp(t: ITerm): Seq[Seq[Int]] = {
    t match {
      case IFunApp(`seq_empty`, _) => Seq()
      case IFunApp(`seq_cons`, Seq(head, tail)) =>
        Seq(StringTheory term2List head) ++ iTerm2SeqHelp(tail)
      case IFunApp(`seq_unit`, Seq(ConcreteString(str))) => Seq(str.toCharArray().map(_.toInt))
      case _ => throw new Exception("Unexpected sequence term, it should be a constant.")
    }
  }

  /** Decode the given sequence term to a sequence of sequences of integers
    */
  def term2Seq(t: Term): Option[Seq[Seq[Int]]] = {
    if (term2Concrete.contains(t)) {
      Some(iTerm2SeqHelp(term2Concrete(t)))
    } else {
      None
    }
  }

  /** Store the concrete representation of the given term
    */
  def storeTerm(t: Term, concrete: ITerm): Unit = {
    term2Concrete(t) = concrete
  }
}
