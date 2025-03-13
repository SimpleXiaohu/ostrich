package ostrich.cesolver.sequencetheory

import ap.theories.sequences.SeqTheoryBuilder
import ap.types.Sort

object CESeqTheoryBuilder {
  // make the loaded theory a singleton and global one,
  // so that we can use it in other theory.
  lazy val instance = new CESeqTheory
  def apply(): CESeqTheoryBuilder = new CESeqTheoryBuilder
}


class CESeqTheoryBuilder extends SeqTheoryBuilder {

  override val name = "OSTRICH-CEA-Sequences"
  val version = "0.0.1"

  Console.withOut(Console.err) {
    println
    println("Unstable version of " + name + " " + version + ", a solver for sequence constraints")
  }

  val theory = CESeqTheoryBuilder.instance

  def setElementSort(elementSort: Sort): Unit = ()
  

}
