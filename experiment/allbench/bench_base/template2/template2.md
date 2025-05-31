# Template2: 
Generate a new sequence from initial sequence by concatenating two overlapping subsequences and check the length of the resulting sequence.

```
(set-logic ALL)

(declare-const x String)
(declare-const d String)

(define-fun n () RegLan
  {num_part}
)

(define-fun r () RegLan
  (re.inter
    {re_lhs}
    {re_rhs}
  )
)

(assert (str.in_re x r))

(define-fun s () (Seq String)
  (seq.write (seq.write (seq.++ (seq.unit "a") (seq.unit "b") (seq.unit "c")) 1 x) 2 d)
)

(define-fun j () (Seq String)
  (seq.++ (seq.extract s 0 2) (seq.extract s 1 2))
)

(define-fun z () String
  (str.++ (seq.nth j 0) (seq.nth j 1) (seq.nth j 2) (seq.nth j 3))
)

(assert (str.in_re z {final_regex}))
(assert (< (seq.len j) (+ (str.len z) 1)))

(check-sat)
```