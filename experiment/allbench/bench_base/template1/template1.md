# Template 1 
write a same string to different positions of sequence and then check the length of the resulting sequence.

```
(set-logic ALL)

(declare-const x String)
(declare-const d String)

(define-fun r () RegLan
  {RE}
)

(assert (str.in_re x r))

(declare-fun s0 () (Seq String))
(declare-fun s1 () (Seq String))
(declare-fun s2 () (Seq String))
(assert (= s1 (seq.write s0 n1 x)))
(assert (= s2 (seq.write s1 m1 x)))
(assert (> (seq.len s0) n1))
(assert (> (seq.len s0) m1))

(define-fun str () String
  (str.++ (seq.nth s2 n2) (seq.nth s2 m2))
)

(assert (str.in_re str {RE}))
(assert (< (seq.len s2) (str.len str)))

(check-sat)

```

