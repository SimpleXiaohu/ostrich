(set-logic QF_SLIA)

(declare-const s (Seq String))
(declare-const s2 (Seq String))

(assert (= s (seq.unit "a")))               ; Initial sequence: ["a"]
(assert (= s2 (seq.write s 0 "b")))          ; Write "b" at index 0

(assert (= (seq.nth s2 0) "b"))              ; Check result

(check-sat)
(get-model)
