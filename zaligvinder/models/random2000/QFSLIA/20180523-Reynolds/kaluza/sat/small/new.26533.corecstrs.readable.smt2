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



(declare-fun PCTEMP_LHS_1 () String)
(declare-fun T1_8 () String)
(declare-fun T2_8 () String)
(declare-fun T_1 () Bool)
(declare-fun T_2 () Bool)
(declare-fun T_3 () Bool)
(declare-fun T_5 () String)
(declare-fun var_0xINPUT_284517 () String)
(assert (= T_1 (not (= "" var_0xINPUT_284517))))
(assert T_1)
(assert (= T_2 (= var_0xINPUT_284517 "array")))
(assert (= T_3 (not T_2)))
(assert T_3)
(assert (= PCTEMP_LHS_1 var_0xINPUT_284517))
(assert (not (str.in_re PCTEMP_LHS_1 (str.to_re "%"))))
(assert (= T_5 (str.++ T1_8 T2_8)))
(assert (= T2_8 PCTEMP_LHS_1))
(assert (= T1_8 "subtype="))
(check-sat)

(exit)
