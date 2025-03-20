package ostrich.cesolver.sequencetheory

import ap.theories.sequences.SeqTheoryBuilder
import ap.types.Sort

object CESeqTheoryBuilder {
  // make the loaded theory a singleton and global one,
  // so that we can use it in other theory.
  lazy val instance = new CESeqTheory
}


class CESeqTheoryBuilder extends SeqTheoryBuilder {

  override val name = "OSTRICH-CEA-Sequences"
  val version = "0.0.1"

  Console.withOut(Console.err) {
    println
    println("Unstable version of " + name + " " + version + ", a solver for sequence constraints")
  }

  val theory = CESeqTheoryBuilder.instance

  // We only consider the case of sequences of strings, so the sort is fixed
  // to the string sort.
  def setElementSort(elementSort: Sort): Unit = ()
  

}
