(set-logic QF_SLIA)
(declare-const s (Seq String))
(declare-const s2 (Seq String))

(assert (= s (seq.++ (seq.unit "a") (seq.unit "b") (seq.unit "c"))))
(assert (= s2 (seq.write s 2 "z")))
(assert (= (seq.nth s2 2) "z"))

(check-sat)