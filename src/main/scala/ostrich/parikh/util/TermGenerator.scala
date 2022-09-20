package ostrich.parikh

import ap.terfor.Term
import ap.terfor.ConstantTerm
import ap.terfor.TermOrder

object TermGeneratorOrder {
  implicit var order: TermOrder = TermOrder.EMPTY
  def apply(): TermOrder = order
  def extend(t: ConstantTerm): Unit = {
    order = order.extend(t)
  }
  def extend(t: Seq[ConstantTerm]): Unit = {
    order = order.extend(t)
  }
  def init(o: TermOrder): Unit = {
    order = o
  }
}

object RegisterTerm {
  var count = 0
  def apply(): Term = {
    count += 1
    val regTerm = new ConstantTerm(s"R$count")
    TermGeneratorOrder.extend(regTerm)
    regTerm
  }
}

object TransitionTerm {
  var count = 0
  def apply(): Term = {
    count += 1
    val transTerm = new ConstantTerm(s"T$count")
    TermGeneratorOrder.extend(transTerm)
    transTerm
  }
}

object LabelTerm {
  var count = 0
  def apply(): Term = {
    count += 1
    val transTerm = new ConstantTerm(s"L$count")
    TermGeneratorOrder.extend(transTerm)
    transTerm
  }
}

object ZTerm {
  var count = 0
  def apply(): Term = {
    count += 1
    val zTerm = new ConstantTerm(s"Z$count")
    TermGeneratorOrder.extend(zTerm)
    zTerm
  }
}

object KTerm {
  var count = 0
  def apply(): Term = {
    count += 1
    val kTerm = new ConstantTerm(s"K$count")
    TermGeneratorOrder.extend(kTerm)
    kTerm
  }
}