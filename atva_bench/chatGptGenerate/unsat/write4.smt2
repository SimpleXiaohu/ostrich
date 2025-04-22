(set-logic QF_SLIA)
(declare-const seq1 (Seq String))
(declare-const seq2 (Seq String))

(assert (= seq1 (seq.++ (seq.unit "a") (seq.unit "b"))))
(assert (= seq2 (seq.write seq1 0 "z")))
(assert (= (seq.nth seq2 0) "a"))

(check-sat)