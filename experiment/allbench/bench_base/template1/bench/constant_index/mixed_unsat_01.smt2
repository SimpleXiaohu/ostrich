(set-logic ALL)

(declare-const x String)
(declare-const d String)

(define-fun r () RegLan
  (str.to_re "ab")
)

(assert (str.in_re x r))

(declare-fun s0 () (Seq String))
(declare-fun s1 () (Seq String))
(declare-fun s2 () (Seq String))
(assert (= s1 (seq.write s0 6 x)))
(assert (= s2 (seq.write s1 10 x)))
(assert (> (seq.len s0) 6))
(assert (> (seq.len s0) 10))

(define-fun str () String
  (str.++ (seq.nth s2 6) (seq.nth s2 10))
)

(assert (str.in_re str (str.to_re "ab")))
(assert (< (seq.len s2) (str.len str)))

(check-sat)
