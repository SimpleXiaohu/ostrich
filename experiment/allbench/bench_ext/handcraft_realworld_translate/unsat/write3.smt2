(set-logic QF_SLIA)
(declare-const s (Seq String))
(declare-const s2 (Seq String))

(assert (= s (seq.++ (seq.unit "1") (seq.unit "2"))))
(assert (= s2 (seq.write s 1 "3")))
(assert (= (seq.nth s2 1) "2"))

(check-sat)