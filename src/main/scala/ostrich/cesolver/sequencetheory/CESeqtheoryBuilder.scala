package ostrich.cesolver.sequencetheory

import ap.theories.sequences.SeqTheoryBuilder
import java.util.function.Supplier
import ap.types.Sort

object CESeqTheoryBuilder {
  // Make the CESeqTheory a global one, so that we can use it in CEStringTheory.
  // We need to take care of the thread safety since the CESeqTheory cantains mutable properties.
  lazy val instance: ThreadLocal[CESeqTheory] = ThreadLocal.withInitial(new Supplier[CESeqTheory] {
    override def get(): CESeqTheory = new CESeqTheory
  })
  def getTheory: CESeqTheory = instance.get()
}


class CESeqTheoryBuilder extends SeqTheoryBuilder {

  override val name = "OSTRICH-CEA-Sequences"
  val version = "0.0.1"

  Console.withOut(Console.err) {
    println
    println("Unstable version of " + name + " " + version + ", a solver for sequence constraints")
  }

  val theory = CESeqTheoryBuilder.getTheory

  // We only consider the case of sequences of strings, so the sort is fixed
  // to the string sort.
  def setElementSort(elementSort: Sort): Unit = ()
  

}
