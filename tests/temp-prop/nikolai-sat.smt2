(set-info :smt-lib-version 2.6)
(set-logic QF_S)
(set-info :source |
Generated by: Oliver Markgraf
Generated on: 2024-03-18
Application: Query for Cloud Services
Target solver: OSTRICH
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status sat)

(declare-const V31 String)
(declare-const V32 String)
(declare-const V16 String)
(declare-const V29 String)
(declare-const V30 String)
(declare-const V17 String)
(declare-const k!8 String)
(declare-const k!7 String)
(declare-const k!3 String)
(declare-const V33 String)
(declare-const V34 String)
(declare-const V35 String)
(declare-const V3 String)
(declare-const V36 String)
(declare-const V37 String)
(declare-const V1 String)

(assert  (= (str.++ V31 "@" V32) (str.++ V16 V29 ":" V30 V17)))

(assert  (= (str.++ V29 ":" V30) (str.++ k!8 "G" k!7)))

(assert (= (str.++ V33 "/" V34) (str.++ V1 V31 "@" V32 V3)))

(assert  (= (str.++ V36 "://" V37) (str.++ V33 "/" V34 k!3)))

(assert  (= (str.++ "mongodb://" V35) (str.++ V33 "/" V34 k!3)))

(check-sat)
(exit)

