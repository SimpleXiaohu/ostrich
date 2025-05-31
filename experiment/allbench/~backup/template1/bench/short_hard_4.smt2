(set-logic ALL)

(declare-const x String)
(declare-const d String)

(define-fun r () RegLan
  (re.inter
    (re.++ (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re "."))
    (re.union (re.+ (re.range "0" "9")) (re.+ (str.to_re ".")))
  )
)

(assert (str.in_re x r))

(define-fun s () (Seq String) (seq.write (seq.write (seq.++ (seq.unit "a") (seq.unit "b")) 0 x) 1 x))
(define-fun str () String (str.++ (seq.nth s 0) (seq.nth s 1)))

(assert (str.in_re str (re.++ (re.* (str.to_re ".")) r (re.+ (str.to_re "#")))))
(assert (< (seq.len s) (str.len str)))

(check-sat)
