(set-info :smt-lib-version 2.6)
(set-logic QF_SLIA)
(set-info :source |
Generated by: Hung-En Wang, Shih-Yu Chen, Fang Yu, and Jie-Hong R. Jiang
Generated on: 2019-02-28
Generator: modified from Kaluza benchmarks
Application: Security analysis of string manipulating web applications with string length constraints
Target solver: ABC, CVC4, Norn, S3P, Trau, Z3-str3
Publication:
Hung-En Wang, Shih-Yu Chen, Fang Yu, Jie-Hong R. Jiang:
A symbolic model checking approach to the analysis of string and length constraints. ASE 2018: 623-633
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status unknown)

(declare-fun T_66 () Bool)
(declare-fun T_67 () Bool)
(declare-fun T_SELECT_10 () Bool)
(declare-fun I0_154 () Int)
(declare-fun I0_158 () Int)
(declare-fun I1_154 () Int)
(declare-fun I1_158 () Int)
(declare-fun I2_154 () Int)
(declare-fun I2_158 () Int)
(declare-fun PCTEMP_LHS_40 () Int)
(declare-fun T_6b () Int)
(declare-fun NEW_DGNode_1481 () String)
(declare-fun NEW_DGNode_1482 () String)
(declare-fun NEW_DGNode_1550 () String)
(declare-fun NEW_DGNode_1551 () String)
(declare-fun NEW_DGNode_1675 () String)
(declare-fun NEW_DGNode_1676 () String)
(declare-fun NEW_DGNode_1738 () String)
(declare-fun NEW_DGNode_1739 () String)
(declare-fun NEW_DGNode_1801 () String)
(declare-fun NEW_DGNode_1802 () String)
(declare-fun NEW_DGNode_1864 () String)
(declare-fun NEW_DGNode_1865 () String)
(declare-fun NEW_DGNode_1927 () String)
(declare-fun NEW_DGNode_1928 () String)
(declare-fun NEW_DGNode_1990 () String)
(declare-fun NEW_DGNode_1991 () String)
(declare-fun NEW_DGNode_403 () String)
(declare-fun NEW_DGNode_404 () String)
(declare-fun PCTEMP_LHS_179 () String)
(declare-fun PCTEMP_LHS_41 () String)
(declare-fun T1_154 () String)
(declare-fun T1_158 () String)
(declare-fun T2_154 () String)
(declare-fun T2_158 () String)
(declare-fun T3_154 () String)
(declare-fun T3_158 () String)
(declare-fun T_6a () String)
(assert (= T_6a NEW_DGNode_1482))
(assert (= NEW_DGNode_1482 NEW_DGNode_1481))
(assert (= NEW_DGNode_1482 NEW_DGNode_403))
(assert (= NEW_DGNode_403 NEW_DGNode_404))
(assert (= NEW_DGNode_403 (str.++ T1_154 T2_154)))
(assert (= T2_154 (str.++ PCTEMP_LHS_41 T3_154)))
(assert (= NEW_DGNode_404 (str.++ T1_158 T2_158)))
(assert (= T2_158 (str.++ PCTEMP_LHS_179 T3_158)))
(assert (= PCTEMP_LHS_179 NEW_DGNode_1991))
(assert (= NEW_DGNode_1991 NEW_DGNode_1990))
(assert (= NEW_DGNode_1991 NEW_DGNode_1928))
(assert (= NEW_DGNode_1928 NEW_DGNode_1927))
(assert (= NEW_DGNode_1928 NEW_DGNode_1865))
(assert (= NEW_DGNode_1865 NEW_DGNode_1864))
(assert (= NEW_DGNode_1865 NEW_DGNode_1802))
(assert (= NEW_DGNode_1802 NEW_DGNode_1801))
(assert (= NEW_DGNode_1802 NEW_DGNode_1739))
(assert (= NEW_DGNode_1739 NEW_DGNode_1738))
(assert (= NEW_DGNode_1739 NEW_DGNode_1676))
(assert (= NEW_DGNode_1676 NEW_DGNode_1675))
(assert (= NEW_DGNode_1676 NEW_DGNode_1551))
(assert (= NEW_DGNode_1551 NEW_DGNode_1550))
(assert (not (str.in_re NEW_DGNode_1551 (str.to_re "+"))))
(assert (not (str.in_re NEW_DGNode_1550 (str.to_re "%"))))
(assert (not (str.in_re NEW_DGNode_1675 (str.to_re "%"))))
(assert (not (str.in_re NEW_DGNode_1738 (str.to_re "%"))))
(assert (not (str.in_re NEW_DGNode_1801 (str.to_re "%"))))
(assert (not (str.in_re NEW_DGNode_1864 (str.to_re "%"))))
(assert (not (str.in_re NEW_DGNode_1927 (str.to_re "%"))))
(assert (not (str.in_re NEW_DGNode_1990 (str.to_re "%"))))
(assert (not (str.in_re NEW_DGNode_1481 (str.to_re "&"))))
(assert (= T_SELECT_10 (not (= PCTEMP_LHS_40 (- 1)))))
(assert T_67)
(assert (= T_67 (not T_66)))
(assert (= T_66 (= PCTEMP_LHS_40 (- 1))))
(assert (= I0_154 (- PCTEMP_LHS_40 0)))
(assert (>= PCTEMP_LHS_40 0))
(assert (>= I2_158 T_6b))
(assert (= I2_158 I1_158))
(assert (<= I2_158 I1_158))
(assert (= I0_158 (- I2_158 T_6b)))
(assert (>= T_6b 0))
(assert (= T_6b (+ PCTEMP_LHS_40 1)))
(assert (<= PCTEMP_LHS_40 I1_154))
(assert (= I2_154 I1_154))
(assert (= I1_154 (str.len T_6a))) ; len 0
(assert (= I1_158 (str.len T_6a))) ; len 0
(assert (= 0 (str.len T1_154))) ; len 1
(assert (= I0_154 (str.len PCTEMP_LHS_41))) ; len 2
(assert (= T_6b (str.len T1_158))) ; len 3
(assert (= I0_158 (str.len PCTEMP_LHS_179))) ; len 4
(check-sat)
(exit)
