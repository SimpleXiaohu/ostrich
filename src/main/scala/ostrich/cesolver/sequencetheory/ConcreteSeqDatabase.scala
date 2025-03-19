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

// Database for concrete sequences of strings. 
// We assume that seq_cons are only used in concrete sequences.
// (Need to take care when using seq_cons during preprocessing)
class ConcreteSeqDatabase (theory: CEStringTheory) {

  import IExpression._
  import theory.seqTheory.{seq_empty, seq_cons, seq_unit}
  import theory.strDatabase

  private val id2SeqMap = new MHashMap[Int, IFunApp]
  private val seq2IdMap = new MHashMap[IFunApp, Int]
  private var idCnt = 0

  private def nextFreeId: Int = synchronized {
    idCnt += 1
    idCnt
  }

  /** 
   * check whether the given id belongs to a sequence
   */
  def containsId(id: Int): Boolean = synchronized {
    id2SeqMap contains id
  }

  /**
   * check whether the given term represents a concrete sequence
   */
  def isConcrete(t: Term): Boolean = t match {
    case LinearCombination.Constant(IdealInt(id)) =>
      containsId(id)
    case _ =>
      false
  }

  /**
    * Check whether the given term represents a concrete sequence, and return
    * the sequence.
    */
  def term2Seq(t: Term): Option[Seq[Seq[Int]]] = t match {
    case LinearCombination.Constant(IdealInt(id)) => Some(id2Seq(id))
    case _ => None
  }

  /**
    * Retrieve the id of a sequence; add the sequence to 
    * the database if it does not exist
    */
  def iTerm2Id(seq: ITerm): Int = seq match {
    case IIntLit(IdealInt(id)) => id
    case seq@IFunApp(`seq_empty` | `seq_cons`, _) => atomic2Id(seq)
    case seq@IFunApp(`seq_unit`, Seq(ConcreteString(str))) => atomic2Id(seq)
    case _ => throw new Exception("Unexpected sequence term, it should be a constant.")
  }
  private def atomic2Id(seq: IFunApp) : Int = synchronized {
    seq2IdMap.getOrElseUpdate(seq, {
      val id = nextFreeId
      id2SeqMap.put(id, seq)
      id
    })
  }

  /**
    * Query the string term for an id
    */
  def id2ITerm(id: Int): ITerm = synchronized {
    id2SeqMap.get(id) match {
      case Some(t@IFunApp(`seq_empty` | `seq_cons` | `seq_unit`, _)) => t
      case _ => throw new Exception("Unexpected sequence term, it should be a constant.")
    }
  }

  /**
    * Decode the given sequence term to a sequence of sequences of integers
    */
  def iTerm2Seq(t: ITerm): Seq[Seq[Int]] = t match {
    case IFunApp(`seq_empty`, _) => Seq()
    case IFunApp(`seq_cons`, Seq(head, tail)) => {
      Seq(StringTheory term2List head) ++ iTerm2Seq(tail)
    }
    case IFunApp(`seq_unit`, Seq(ConcreteString(str))) => Seq(str.toCharArray().map(_.toInt))
    case _ => throw new Exception("Unexpected sequence term, it should be a constant.")
  }

  /**
    * Query the sequence for the given id
    */
  def id2Seq(id: Int): Seq[Seq[Int]] = iTerm2Seq(id2ITerm(id))

  /**
    * Retrieve the id of a sequence; add the sequence to
    * the database if it does not exist
    */
  def seq2Id(seq: Seq[Seq[Int]]): Int = {
    atomic2Id(seq_empty())
  }
}