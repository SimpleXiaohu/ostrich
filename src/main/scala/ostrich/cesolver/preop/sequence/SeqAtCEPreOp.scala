package ostrich.cesolver.preop.sequence

import ap.parser.ITerm

object SeqAtCEPreOp {
  // we can reuse the pre-operator of seq.nth since
  // seq.at(a, i) = sequence(seq.nth(a, i))
  def apply(index: ITerm): SeqNthCEPreOpBase = SeqNthCEPreOp(index)
}
