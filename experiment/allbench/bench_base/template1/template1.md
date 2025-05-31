# Template 1 
write a same string to different positions of sequence and then check the length of the resulting sequence.

```
(set-logic ALL)

(declare-const x String)
(declare-const d String)

(define-fun r () RegLan
  (re.inter
    {r1}
    {r2}
  )
)

(assert (str.in_re x r))

(define-fun s () (Seq String)
  (seq.write (seq.write (seq.++ (seq.unit "a") (seq.unit "b")) 0 x) 1 x)
)

(define-fun str () String
  (str.++ (seq.nth s 0) (seq.nth s 1))
)

(assert (str.in_re str {final_regex}))
(assert (< (seq.len s) (str.len str)))

(check-sat)
```

