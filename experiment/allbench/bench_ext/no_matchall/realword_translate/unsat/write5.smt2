(set-logic QF_SLIA)
(declare-const s (Seq String))
(declare-const s2 (Seq String))
(declare-const x  String)

(assert (= s (seq.++ (seq.unit "X") (seq.unit "Y"))))
(assert (= s2 (seq.write s 1 "Z")))
(assert (= x (seq.nth s2 0)))
(assert (not (= x "X")))

(check-sat)