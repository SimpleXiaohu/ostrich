(set-info :smt-lib-version 2.6)
(set-logic QF_SLIA)
(set-info :source |
Generated by: Parosh Aziz Abdulla, Mohamed Faouzi Atig, Yu-Fang Chen, Lukáš Holík, Ahmed Rezine, Philipp Rümmer, Jari Stenman
Generated on: 2015-03-09
Generator: Eldarica
Application: CEGAR based model checking for string programs
Target solver: Norn
Publication: "String constraints for verification" by P.A. Abdulla, M.F. Atig, Y.F. Chen, L. Holík, A. Rezine, P. Rümmer, and J. Stenman, CAV 2014.
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status unknown)

(declare-fun var_0 () String)
(declare-fun var_1 () String)
(declare-fun var_2 () String)
(declare-fun var_3 () String)
(declare-fun var_4 () String)
(declare-fun var_5 () String)
(declare-fun var_6 () String)
(declare-fun var_7 () String)
(declare-fun var_8 () String)
(declare-fun var_9 () String)
(declare-fun var_10 () String)
(declare-fun var_11 () String)
(declare-fun var_12 () String)

(assert (str.in_re (str.++ var_7 "z" var_8 ) (re.++ (re.* (re.union (str.to_re "z") (str.to_re "a"))) (str.to_re "b"))))
(assert (str.in_re (str.++ var_7 "z" var_8 ) (re.++ (re.* (re.union (re.union (str.to_re "z") (str.to_re "a")) (re.++ (str.to_re "b") (re.++ (re.* (str.to_re "b")) (re.union (str.to_re "z") (str.to_re "a")))))) (re.++ (str.to_re "b") (re.* (str.to_re "b"))))))
(assert (str.in_re (str.++ var_7 "z" var_8 ) (re.++ (re.* (re.union (str.to_re "z") (re.++ (re.union (str.to_re "b") (str.to_re "a")) (re.union (str.to_re "z") (str.to_re "b"))))) (re.union (str.to_re "b") (str.to_re "a")))))
(assert (str.in_re var_8 (re.* (re.range "a" "u"))))
(assert (str.in_re var_7 (re.* (re.range "a" "u"))))
(assert (not (str.in_re (str.++ var_7 "z" var_8 "a" ) (re.* (re.++ (str.to_re "b") (re.++ (re.* (str.to_re "z")) (str.to_re "b")))))))
(assert (<= 0  (str.len var_8)))
(check-sat)
(exit)
