(set-logic ALL)

(declare-const x String)
(declare-const d String)

(define-fun r () RegLan
  (re.inter
    (re.++ (re.range "a" "z") (re.* (re.range "a" "z")))
    (re.++ (re.range "a" "z") (re.* (re.range "a" "z")))
  )
)

(assert (str.in_re x r))

(declare-fun s0 () (Seq String))
(declare-fun s1 () (Seq String))
(declare-fun s2 () (Seq String))
(assert (= s1 (seq.write s0 0 x)))
(assert (= s2 (seq.write s1 1 x)))
(assert (> (seq.len s0) 1))

(define-fun str () String
  (str.++ (seq.nth s2 0) (seq.nth s2 1))
)

(assert (str.in_re str (re.++ (re.* (re.union (re.range "a" "z") (re.range "0" "9"))) (re.++ (re.range "a" "z") (re.* (re.range "0" "9"))))))
(assert (< (seq.len s2) (str.len str)))

(check-sat)
