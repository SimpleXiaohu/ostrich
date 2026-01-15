(set-logic ALL)

(declare-const x String)
(declare-const d String)

(define-fun r () RegLan
  (re.inter (re.++ (re.* (re.union (re.range "a" "z") (str.to_re "_"))) (re.++ (str.to_re "#") (re.++ (re.* (re.range "0" "9")) (re.++ (str.to_re ".") (re.+ (re.range "1" "9")))))) (re.union (re.++ re.all (re.++ (str.to_re "#") (re.++ (re.* (re.range "0" "9")) (re.++ (str.to_re ".") (re.+ (re.range "1" "9")))))) (re.++ (re.* (re.range "0" "9")) (re.++ (str.to_re ".") (re.* (re.range "0" "9"))))))
)

(assert (str.in_re x r))

(declare-fun s0 () (Seq String))
(declare-fun s1 () (Seq String))
(declare-fun s2 () (Seq String))
(assert (= s1 (seq.write s0 7 x)))
(assert (= s2 (seq.write s1 3 x)))
(assert (> (seq.len s0) 7))
(assert (> (seq.len s0) 3))

(define-fun str () String
  (str.++ (seq.nth s2 6) (seq.nth s2 9))
)

(assert (str.in_re str (re.inter (re.++ (re.* (re.union (re.range "a" "z") (str.to_re "_"))) (re.++ (str.to_re "#") (re.++ (re.* (re.range "0" "9")) (re.++ (str.to_re ".") (re.+ (re.range "1" "9")))))) (re.union (re.++ re.all (re.++ (str.to_re "#") (re.++ (re.* (re.range "0" "9")) (re.++ (str.to_re ".") (re.+ (re.range "1" "9")))))) (re.++ (re.* (re.range "0" "9")) (re.++ (str.to_re ".") (re.* (re.range "0" "9"))))))))
(assert (< (seq.len s2) (str.len str)))

(check-sat)
