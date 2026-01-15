(set-logic ALL)

(declare-const x String)
(declare-const d String)

(define-fun n () RegLan
  (re.++ (re.* (re.range "0" "9"))
         (re.++ (str.to_re ".") (re.+ (re.range "1" "9"))))
)

(define-fun r () RegLan
  (re.inter
    (re.++ (re.* (re.union (re.range "a" "z") (str.to_re "_"))) n)
    (re.union (re.++ re.all (re.++ (str.to_re "#") n))
              (re.++ (re.* (re.range "0" "9"))
                     (re.++ (str.to_re ".") (re.* (re.range "0" "9")))))
  )
)

(assert (str.in_re x r))

(declare-fun s0 () (Seq String))
(declare-fun s1 () (Seq String))
(declare-fun s2 () (Seq String))
(declare-fun s3 () (Seq String))

(declare-const n1 Int)
(declare-const n2 Int)
(declare-const n3 Int)
(declare-const n4 Int)
(declare-const n5 Int)
(declare-const len1 Int)
(declare-const len2 Int)
(declare-const m1 Int)
(declare-const m2 Int)
(declare-const m3 Int)
(declare-const m4 Int)

(assert (>= n1 0))
(assert (>= n2 0))
(assert (>= n3 0))
(assert (>= n4 0))
(assert (>= n5 0))
(assert (>= len1 0))
(assert (>= len2 0))
(assert (>= m1 0))
(assert (>= m2 0))
(assert (>= m3 0))
(assert (>= m4 0))

(assert (= s1 (seq.write s0 n1 "foo")))
(assert (= s2 (seq.write s1 n2 x)))
(assert (= s3 (seq.write s2 n3 d)))

(define-fun j () (Seq String)
  (seq.++ (seq.extract s3 n4 len1) (seq.extract s3 n5 len2))
)

(define-fun z () String
  (str.++ (seq.nth j m1) (seq.nth j m2) (seq.nth j m3) (seq.nth j m4))
)
(assert (= (seq.nth j m1) "foo"))
(assert (str.in_re z (re.* (re.range "0" "9"))))
(assert (< (seq.len j) (+ (str.len z) 1)))
(check-sat)
