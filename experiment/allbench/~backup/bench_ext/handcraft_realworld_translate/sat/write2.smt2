(set-logic QF_SLIA)
(declare-const items (Seq String))
(declare-const updated (Seq String))

(assert (= items (seq.++ (seq.unit "x") (seq.unit "y") (seq.unit "z"))))
(assert (= updated (seq.write items 1 "w")))
(assert (= (seq.nth updated 1) "w"))

(check-sat)