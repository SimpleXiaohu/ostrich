(set-logic QF_SLIA)

(declare-const s (Seq String))
(declare-const s2 (Seq String))
(declare-const x String)


; Write "x" to index 1
(assert (= s2 (seq.write s 1 "x")))

; Assert that the element at index 1 is not "x"
(assert (= x (seq.nth s2 1)))
(assert (not (= x "x")))

(check-sat)