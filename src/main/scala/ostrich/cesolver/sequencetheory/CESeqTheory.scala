package ostrich.cesolver.sequencetheory

import ap.theories.sequences.SeqTheory
import ap.types.Sort
import ap.basetypes.IdealInt
import ostrich.OstrichStringTheory.OstrichStringSort
import ap.terfor.{Formula, Term, TermOrder}
import ap.terfor.conjunctions.Conjunction
import ap.parser.ITerm
import ap.types.MonoSortedIFunction
import ap.types.MonoSortedPredicate
import ap.theories.Theory
import ap.parser.IFunction
import ap.parser.IExpression
import ap.Signature
import ap.proof.theoryPlugins.Plugin
import scala.collection.mutable.{Map => MMap, Set => MSet}
import scala.collection.{Map => GMap}
import ap.parser.CollectingVisitor
import ap.parser.IFunApp
import ap.parser.IFormula
import ostrich.cesolver.util.ParikhUtil.debugPrintln
import ap.theories.TheoryRegistry
import ostrich.cesolver.stringtheory.CEStringTheory
import ap.theories.strings.StringTheory

/** The theory to handle the sequence of strings.
  */
class CESeqTheory extends SeqTheory {

  val ElementSort: Sort = CEStringTheory.stringSort

  object SeqSort extends Sort {
    import ap.parser.IExpression._
    val name: String                  = "Seq[" + ElementSort.name + "]"
    val cardinality: Option[IdealInt] = None

    private var stringTheory: CEStringTheory = null

    protected[cesolver] def setStringTheory(st: CEStringTheory) =
      stringTheory = st

    def membershipConstraint(t: Term)(implicit order: TermOrder): Formula = Conjunction.TRUE

    def individuals: Stream[ITerm] = seq_empty() #::
      (for (tail <- individuals; head <- ElementSort.individuals) yield seq_cons(head, tail))

    def augmentModelTermSet(
        model: Conjunction,
        assignment: MMap[(IdealInt, Sort), ITerm],
        allTerms: Set[(IdealInt, Sort)],
        definedTerms: MSet[(IdealInt, Sort)]
    ): Unit = ()

    override def decodeToTerm(
        d: IdealInt,
        assignment: GMap[(IdealInt, Sort), ITerm]
    ): Option[ITerm] =
      // TODO: implement this to generate model of sequence
      assignment get ((d, this))
  }

  private val ESo = ElementSort
  private val SSo = SeqSort
  import Sort.{Integer, Nat}
  val seq_empty = new MonoSortedIFunction("seq_empty", List(), SSo, true, false)
  val seq_cons  = new MonoSortedIFunction("seq_cons", List(ESo, SSo), SSo, true, false)
  val seq_unit  = new MonoSortedIFunction("seq_unit", List(ESo), SSo, true, false)

  val seq_++      = new MonoSortedIFunction("seq_++", List(SSo, SSo), SSo, true, false)
  val seq_len     = new MonoSortedIFunction("seq_len", List(SSo), Nat, true, false)
  val seq_extract = new MonoSortedIFunction("seq_extract", List(SSo, Nat, Nat), SSo, true, false)
  val seq_indexof =
    new MonoSortedIFunction("seq_indexof", List(SSo, ESo, Integer), Integer, true, false)
  val seq_at     = new MonoSortedIFunction("seq_at", List(SSo, Nat), SSo, true, false)
  val seq_nth    = new MonoSortedIFunction("seq_nth", List(SSo, Nat), ESo, true, false)

  val seq_update = new MonoSortedIFunction("seq_update", List(SSo, Nat, SSo), SSo, true, false)

  val seq_contains = new MonoSortedPredicate("seq_contains", List(SSo, SSo))
  val seq_prefixof = new MonoSortedPredicate("seq_prefixof", List(SSo, SSo))
  val seq_suffixof = new MonoSortedPredicate("seq_suffixof", List(SSo, SSo))
  val seq_replace  = new MonoSortedIFunction("seq_replace", List(SSo, SSo, SSo), SSo, true, false)

  val seq_write  = new MonoSortedIFunction("seq_write", List(SSo, Nat, ESo), SSo, true, false)
  val ReSo       = Sort.createInfUninterpretedSort("RegLan")
  val seq_filter = new MonoSortedIFunction("seq_filter", List(SSo, ReSo), SSo, true, false)
  val seq_match      : IFunction  = 
    new MonoSortedIFunction("seq_match",
                            List(ESo, ReSo), SSo, true, false)
  val seq_match_all  : IFunction  =
    new MonoSortedIFunction("seq_match_all",
                            List(ESo, ReSo), SSo, true, false)

  ////////////////////////////////////////////////////////////////

  val functions = List(
    seq_empty,
    seq_cons,
    seq_unit,
    seq_++,
    seq_len,
    seq_extract,
    seq_indexof,
    seq_at,
    seq_nth,
    seq_update,
    seq_replace,
    seq_write,
    seq_filter,
    seq_match,
    seq_match_all
  )
  val predefPredicates                                     = List(seq_contains, seq_prefixof, seq_suffixof)
  val (funPredicates, axioms, _, funPredMap)               = Theory.genAxioms(functions)
  val predicates                                           = predefPredicates ++ funPredicates
  val functionPredicateMapping                             = functions zip funPredicates
  val functionalPredicates                                 = funPredicates.toSet
  val predicateMatchConfig: Signature.PredicateMatchConfig = Map()
  val totalityAxioms                                       = Conjunction.TRUE
  val triggerRelevantFunctions: Set[IFunction]             = Set()
  def plugin                                               = None

  private object Preproc extends CollectingVisitor[Unit, IExpression] {
    import IExpression._

    def postVisit(t: IExpression, arg: Unit, subres: Seq[IExpression]): IExpression = t match {
      case IFunApp(`seq_nth`, _) =>
        // Preprocessing Can be done here
        t update subres

      case t => t update subres
    }
  }

  override def iPreprocess(f: IFormula, signature: Signature): (IFormula, Signature) = {
    val res = Preproc.visit(f, ()).asInstanceOf[IFormula]
    (res, signature)
  }

  override def isSoundForSat(theories: Seq[Theory], config: Theory.SatSoundnessConfig.Value): Boolean = true

  TheoryRegistry register this
  SeqTheory register this

}
