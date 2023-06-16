package ostrich.cesolver.util

import ap.parser.ITerm
import ap.terfor.ConstantTerm
import ap.terfor.TermOrder
import ap.parser.IExpression._


object TermGenerator {
  def apply(): TermGenerator = new TermGenerator
}

class TermGenerator  {
  private val id = hashCode()
  var count = 0
  def registerTerm: ITerm = {
    count = count + 1
    Sort.Integer.newConstant(s"R${count}_${id}")
  }

  def transitionTerm: ITerm = {
    count = count + 1
    Sort.Integer.newConstant(s"T${count}_${id}")
  }

  def zTerm: ITerm = {
    count = count + 1
    Sort.Integer.newConstant(s"Z${count}_${id}")
  }

  def lenTerm: ITerm = {
    count = count + 1
    Sort.Integer.newConstant(s"Len${count}_${id}")
  }

  def intTerm: ITerm = {
    count = count + 1
    Sort.Integer.newConstant(s"Int${count}_${id}")
  }
}