(set-info :smt-lib-version 2.6)
(set-logic QF_SLIA)
(set-info :source |
Generated by: Andrew Reynolds
Generated on: 2018-04-25
Generator: Kudzu, converted to v2.6 by CVC4
Application: Symbolic Execution of Javascript
Target solver: Kaluza
Publications: "A symbolic execution framework for JavaScript" by P. Saxena, D. Akhawe, S. Hanna, F. Mao, S. McCamant, and D. Song, 2010.
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status unknown)



(declare-fun T_1 () Bool)
(declare-fun T_2 () Bool)
(declare-fun T_3 () Bool)
(declare-fun T_4 () Bool)
(declare-fun T_5 () Bool)
(declare-fun T_6 () Bool)
(declare-fun T_7 () Bool)
(declare-fun T_8 () Bool)
(declare-fun T_9 () Bool)
(declare-fun T_a () Bool)
(declare-fun T_b () Bool)
(declare-fun T_c () Bool)
(declare-fun var_0xINPUT_66688 () String)
(assert (= T_1 (not (= "" var_0xINPUT_66688))))
(assert T_1)
(assert (= T_2 (not (= "" var_0xINPUT_66688))))
(assert T_2)
(assert (= T_3 (not (= var_0xINPUT_66688 ""))))
(assert T_3)
(assert (= T_4 (not (= "" var_0xINPUT_66688))))
(assert T_4)
(assert (= T_5 (= var_0xINPUT_66688 "")))
(assert (= T_6 (not T_5)))
(assert T_6)
(assert (= T_7 (not (= "" var_0xINPUT_66688))))
(assert T_7)
(assert (= T_8 (not (= "3s71lxYG6e" var_0xINPUT_66688))))
(assert T_8)
(assert (= T_9 (not (= var_0xINPUT_66688 "3s71lxYG6e"))))
(assert T_9)
(assert (= T_a (= var_0xINPUT_66688 "")))
(assert (= T_b (not T_a)))
(assert T_b)
(assert (= T_c (not (= var_0xINPUT_66688 ""))))
(assert T_c)
(check-sat)

(exit)
