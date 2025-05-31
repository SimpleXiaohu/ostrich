(set-logic ALL)

(declare-const x String)
(declare-const d String)

(define-fun n () RegLan
  (re.++ (re.* (re.range "0" "9")) (re.++ (str.to_re ".") (re.+ (re.range "1" "9"))))
)

(define-fun r () RegLan
  (re.inter
    (re.++ (re.* (re.union (re.range "a" "z") (str.to_re "_"))) n)
    (re.union (re.++ (re.* (str.to_re "#")) n) (re.++ (re.+ (re.range "0" "9")) (str.to_re ".") (re.* (re.range "0" "9"))))
  )
)

(assert (str.in_re x r))

(declare-fun s0 () (Seq String))
(declare-fun s1 () (Seq String))
(declare-fun s2 () (Seq String))
(declare-fun s3 () (Seq String))
(assert (= s1 (seq.write s0 0 "a")))
(assert (= s2 (seq.write s1 1 x)))
(assert (= s3 (seq.write s2 2 d)))
(assert (> (seq.len s3) 2))

(define-fun j () (Seq String)
  (seq.++ (seq.extract s3 0 2) (seq.extract s3 1 2))
)

(define-fun z () String
  (str.++ (seq.nth j 0) (seq.nth j 1) (seq.nth j 2) (seq.nth j 3))
)

(assert (str.in_re z (re.++ (re.* (re.union (re.range "a" "z") (re.range "0" "9"))) (re.++ r (re.+ (str.to_re "#"))))))
(assert (< (seq.len j) (+ (str.len z) 1)))

(check-sat)
