(set-logic QF_SLIA)
(declare-const s (Seq String))
(declare-const s2 (Seq String))

(assert (= s (seq.++ (seq.unit "X") (seq.unit "Y"))))
(assert (= s2 (seq.write s 1 "Z")))
(assert (not (= (seq.nth s2 0) "X")))

(check-sat)