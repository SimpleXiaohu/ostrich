(set-logic ALL)

(declare-const x String)
(declare-const d String)

(define-fun n () RegLan
  (re.++ (re.+ (re.range "0" "9")) (re.++ (str.to_re ".") (re.+ (re.range "0" "9"))))
)

(define-fun r () RegLan
  (re.inter
    (re.++ (re.* (re.union (re.range "a" "z") (str.to_re "_"))) n)
    (re.union (re.++ (re.* (re.range "a" "z")) (str.to_re "#") n) (re.++ (re.+ (re.range "0" "9")) (str.to_re ".") (re.+ (re.range "0" "9"))))
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

(assert (str.in_re z (re.++ (re.* (re.range "a" "z")) r (re.+ (str.to_re "#")))))
(assert (< (seq.len j) (+ (str.len z) 1)))

(check-sat)
