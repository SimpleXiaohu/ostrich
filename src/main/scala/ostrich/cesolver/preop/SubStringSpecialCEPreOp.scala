package ostrich.cesolver.preop

import ostrich.automata.Automaton
import ostrich.cesolver.automata.CostEnrichedAutomatonBase
import ostrich.cesolver.automata.CEBasicOperations
import ap.parser.IExpression
import ap.basetypes.IdealInt
import ap.parser.IIntLit
import ostrich.cesolver.automata.BricsAutomatonWrapper

// substring(s, 0, len(s) - 1)
class SubStr_0_lenMinus1 extends CEPreOp {

  override def toString = "SubStr_0_lenMinus1"

  def apply(
      argumentConstraints: Seq[Seq[Automaton]],
      resultConstraint: Automaton
  ): (Iterator[Seq[Automaton]], Seq[Seq[Automaton]]) = {
    val res = resultConstraint.asInstanceOf[CostEnrichedAutomatonBase]
    val preImage = CEBasicOperations.concatenate(
      Seq(
        res,
        LengthCEPreOp.lengthPreimage(1)
      )
    )
    if (res.isAccept(res.initialState))
      preImage.setAccept(preImage.initialState, true)

    (Iterator(Seq(preImage)), Seq())
  }

  def eval(arguments: Seq[Seq[Int]]): Option[Seq[Int]] = {
    Some(arguments(0).slice(0, arguments(0).length - 1))
  }
}

// substring(s, len(s) - 1, 1)
class SubStr_lenMinus1_1 extends CEPreOp {

  override def toString = "SubStr_lenMinus1_1"

  def apply(
      argumentConstraints: Seq[Seq[Automaton]],
      resultConstraint: Automaton
  ): (Iterator[Seq[Automaton]], Seq[Seq[Automaton]]) = {
    val res = resultConstraint.asInstanceOf[CostEnrichedAutomatonBase]
    val suffix = CEBasicOperations.intersection(
      res,
      PreOpUtil.automatonWithLenLessThan(2)
    )
    val preImage = CEBasicOperations.concatenate(
      Seq(
        BricsAutomatonWrapper.makeAnyString(),
        suffix
      )
    )
    (Iterator(Seq(preImage)), Seq())
  }

  def eval(arguments: Seq[Seq[Int]]): Option[Seq[Int]] = {
    Some(arguments(0).slice(arguments(0).length - 1, 1))
  }
}

// substring(s, n, len(s) - m)
class SubStr_n_lenMinusM(beginIdx: Integer, offset: Integer) extends CEPreOp {

  override def toString = "SubStr_n_lenMinusM"

  def apply(
      argumentConstraints: Seq[Seq[Automaton]],
      resultConstraint: Automaton
  ): (Iterator[Seq[Automaton]], Seq[Seq[Automaton]]) = {
    val res = resultConstraint.asInstanceOf[CostEnrichedAutomatonBase]
    val nonEpsResPreImage = CEBasicOperations.concatenate(
      Seq(
        PreOpUtil.automatonWithLen(beginIdx),
        res,
        PreOpUtil.automatonWithLen(offset)
      )
    )
    val epsResPreImage = if (res.isAccept(res.initialState)) {
      val beginPlus1 = beginIdx.intValue + 1
      val offsetPlus1 = offset.intValue + 1
      val epsResPreImage =
        PreOpUtil.automatonWithLenLessThan(beginPlus1.min(offsetPlus1))
      for (r <- res.registers) {
        epsResPreImage.regsRelation &= (r === 0)
      }
      epsResPreImage
    } else {
      BricsAutomatonWrapper.makeEmpty()
    }

    val preImage =
      CEBasicOperations.union(Seq(nonEpsResPreImage, epsResPreImage))

    (
      Iterator(Seq(preImage)),
      Seq()
    )
  }

  def eval(arguments: Seq[Seq[Int]]): Option[Seq[Int]] = {
    Some(
      arguments(0)
        .slice(beginIdx.intValue, arguments(0).length - offset.intValue)
    )
  }
}

// substring(s, 0, indexof_c(s, 0))
class SubStr_0_indexofc0(c: Char) extends CEPreOp {

  override def toString = "SubStr_0_indexofc0"

  def apply(
      argumentConstraints: Seq[Seq[Automaton]],
      resultConstraint: Automaton
  ): (Iterator[Seq[Automaton]], Seq[Seq[Automaton]]) = {
    val res = resultConstraint.asInstanceOf[CostEnrichedAutomatonBase]
    val cAut = BricsAutomatonWrapper.fromString(c.toString)
    val complement_c = CEBasicOperations.complement(cAut)
    val interRes = CEBasicOperations.intersection(res, complement_c)
    val preImage = CEBasicOperations.concatenateRemainAccept(
      Seq(interRes, cAut, BricsAutomatonWrapper.makeAnyString()),
      interRes.isAccept(res.initialState)
    )
    (Iterator(Seq(preImage)), Seq())
  }

  def eval(arguments: Seq[Seq[Int]]): Option[Seq[Int]] = None
}

// substring(s, 0, indexof_c(s, 0) + 1)

// substring(s, indexof_c(s, 0) - 1, 1)
// substring(s, indexof_c(s, 0) + 1, len(s) - indexof_c(s, 0) - 1)
