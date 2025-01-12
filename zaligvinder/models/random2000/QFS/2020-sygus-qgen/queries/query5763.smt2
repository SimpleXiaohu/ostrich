(set-info :smt-lib-version 2.6)
(set-logic QF_S)
(set-info :source |
Generated by: Andrew Reynolds
Generated on: 2020-02-27
Generator: CVC4
Application: Testing of string solvers
Target solver: CVC4
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "random")
(set-info :status unknown)
(declare-fun x () String)
(assert (let ((_let_0 (re.* re.allchar ))) (let ((_let_1 (str.++ "C" (str.++ "A" "A")))) (and (not (= (str.in_re x (re.++ _let_0 re.allchar  _let_0 re.allchar  _let_0 (str.to_re (str.++ "C" (str.++ "A" (str.++ "A" "C")))) _let_0)) (str.in_re x (re.++ _let_0 re.allchar  _let_0 re.allchar  _let_0 (str.to_re (str.++ "A" (str.++ "A" (str.++ "B" "A")))) _let_0)))) (not (= (str.in_re x (re.++ _let_0 re.allchar  _let_0 (str.to_re (str.++ "A" _let_1)) _let_0 re.allchar  _let_0)) (str.in_re x (re.++ _let_0 re.allchar  _let_0 (str.to_re "A") _let_0 (str.to_re _let_1) _let_0))))))))
(check-sat)
(exit)
