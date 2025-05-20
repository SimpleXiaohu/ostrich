(set-logic QF_SLIA)
(declare-const line String)
(declare-const fields (Seq String))

(assert (= line "Alice,25,Engineer"))
(assert (= fields (str.split line ",")))

(assert (= (seq.nth fields 0) "Alice"))
(assert (= (seq.nth fields 1) "25"))
(assert (= (seq.nth fields 2) "Engineer"))

(check-sat)