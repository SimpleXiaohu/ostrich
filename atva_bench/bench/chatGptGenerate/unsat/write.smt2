(set-logic QF_SLIA)

(declare-const s (Seq String))
(declare-const s2 (Seq String))

; Write "x" to index 1
(assert (= s2 (seq.write s 1 "x")))

; Assert that the element at index 1 is not "x"
(assert (not (= (seq.nth s2 1) "x")))

(check-sat)