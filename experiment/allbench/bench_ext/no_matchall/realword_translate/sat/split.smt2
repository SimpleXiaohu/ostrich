(set-logic QF_SLIA)

(declare-const input String)
(declare-const split (Seq String))
(declare-const result String)

(assert (= input "x:y:z"))
(assert (= split (str.split input ":")))
(assert (= result (seq.join split ":")))
(assert (= result "x:y:z"))

(check-sat)
(get-model)