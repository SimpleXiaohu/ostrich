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

(declare-const n1 Int)
(declare-const m1 Int)
(declare-const n2 Int)
(declare-const m2 Int)

(assert (>= n1 0))
(assert (>= m1 0))
(assert (>= n2 0))
(assert (>= m2 0))

(assert (= s1 (seq.write s0 n1 x)))
(assert (= s2 (seq.write s1 m1 x)))
(assert (> (seq.len s0) n1))
(assert (> (seq.len s0) m1))

(define-fun str () String
  (str.++ (seq.nth s2 n2) (seq.nth s2 m2))
)

(assert (= n2 n1))
(assert (= m2 m1))

(assert (str.in_re str (str.to_re "ab")))
(assert (< (seq.len s2) (str.len str)))

(check-sat)
