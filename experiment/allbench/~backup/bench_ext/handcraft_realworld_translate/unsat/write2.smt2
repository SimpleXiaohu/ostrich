(set-logic QF_SLIA)

(declare-const seq1 (Seq String))
(declare-const seq2 (Seq String))

(assert (= seq1 (seq.++ (seq.unit "foo") (seq.unit "bar"))))
(assert (= seq2 (seq.write seq1 1 "baz")))

; Contradiction: we wrote "baz" at index 1, but then claim it’s still "bar"
(assert (= (seq.nth seq2 1) "bar"))

(check-sat)