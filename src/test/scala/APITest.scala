package ostrich

import ap.SimpleAPI
import SimpleAPI.ProverStatus
import ap.parser._
import ap.theories.strings.SeqStringTheory
import ap.util.Debug

import org.scalacheck.{Arbitrary, Gen, Properties}
import org.scalacheck.Prop._

object APITest extends Properties("APITest") {

  Debug enableAllAssertions true

  def expect[A](x : A, expected : A) : A = {
    assert(x == expected, "expected: " + expected + ", got: " + x)
    x
  }

  val stringTheory = new OstrichStringTheory(List(), OFlags())
  import stringTheory._
  import IExpression._

  property("concat") =
    Console.withErr(ap.CmdlMain.NullStream) {
    SimpleAPI.withProver(enableAssert = true) { p =>
      import p._

      val x, y, z = createConstant(StringSort)
      implicit val _ = decoderContext

      scope {
        !! (x === "abc")

        expect(???, ProverStatus.Sat)
        evalToTerm(x)
        expect(asString(eval(x)), "abc")

        !! (x ++ y ++ "xyz" === z)
 
        expect(???, ProverStatus.Sat)
        assert(asString(eval(x)) + asString(eval(y)) + "xyz" == asString(eval(z)))

        !! (y =/= "")

        expect(???, ProverStatus.Sat)
        assert(asString(eval(x)) + asString(eval(y)) + "xyz" == asString(eval(z)))

        scope {
          !! (y === z)
          expect(???, ProverStatus.Unsat)
        }

        ??? == ProverStatus.Sat
      }
    }}

  property("head-tail") =
    Console.withErr(ap.CmdlMain.NullStream) {
    SimpleAPI.withProver(enableAssert = true) { p =>
      import p._

      val x, y, z = createConstant(StringSort)
      implicit val _ = decoderContext

      scope {
        !! (x ++ y === y ++ x)

        // scope {
        //   !! (str_len(x) === 2)
        //   !! (str_len(y) === 5)
        //   !! (x =/= "")

        //   println(???)             // currently this cannot be handled
        //   println("x = " + evalToTerm(x))
        //   println("y = " + evalToTerm(y))

        //   scope {
        //     ?? (str_head(x) === str_head(str_tail(x)))
        //     println(???)
        //   }
        // }

        !! ("abcxyz" === x ++ y)    // this special case is supported
        
        expect(???, ProverStatus.Sat)
        assert(asString(eval(y)) + asString(eval(x)) == "abcxyz")

        ?? (x === "" | y === "")
        ??? == ProverStatus.Valid
      }
    }}

  property("len-no-regex") =
    Console.withErr(ap.CmdlMain.NullStream) {
    SimpleAPI.withProver(enableAssert = true) { p =>
      import p._

      val x = createConstant(StringSort)

      !! (str_len(x) > 10)
      expect(???, ProverStatus.Sat)

      // this previous led to unsat, since the generated solution did
      // not actually satisfy the length constraint
      !! (x === evalToTerm(x))
      ??? == ProverStatus.Sat
    }}

  property("integer") = 
    Console.withErr(ap.CmdlMain.NullStream) {
      SimpleAPI.withProver(enableAssert = true) { p => 
          import p._
          val i = createConstant("i")
          val j = createConstant("j")
          !! (i === j)
          ??? == ProverStatus.Sat
      }
    }

  property("string model test") =
    Console.withErr(ap.CmdlMain.NullStream) {
      SimpleAPI.withProver(enableAssert = true) { p => 
        import p._
        val x = createConstant("x", StringSort)
        val s = "str" : ITerm

        addAssertion(x === s)

        ??? == ProverStatus.Sat &&
        partialModel.evalToTerm(x) == Some(s) &&
        evalToTerm(x) == s &&
        withCompleteModel(e => e.evalToTerm(x)) == s
      }
    }

  property("str.from_code") =
    Console.withErr(ap.CmdlMain.NullStream) {
      SimpleAPI.withProver(enableAssert = true) { p => 
        import p._
        val x = createConstant("x")
        !! (str_from_code(x) === str_from_code(x))
        ??? == ProverStatus.Sat
      }
    }

  property("str.to_code") =
    Console.withErr(ap.CmdlMain.NullStream) {
      SimpleAPI.withProver(enableAssert = true) { p => 
        import p._
        val x = createConstant("x", StringSort)
        !! (str_to_code(x) > 0)
        ??? == ProverStatus.Sat
      }
    }

  property("str.to_code big") =
    Console.withErr(ap.CmdlMain.NullStream) {
      SimpleAPI.withProver(enableAssert = true) { p => 
        import p._
        val x = createConstant("x", StringSort)
        !! (str_to_code(x) > 1000000000)
        ??? == ProverStatus.Unsat
      }
    }

  property("str.to_int") =
    Console.withErr(ap.CmdlMain.NullStream) {
      SimpleAPI.withProver(enableAssert = true) { p => 
        import p._
        val x = createConstant("x", StringSort)
        !! (str_to_int(x) > 12345)
        ??? == ProverStatus.Sat
      }
    }

}
