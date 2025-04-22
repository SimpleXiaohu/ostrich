(set-logic QF_SLIA)
(declare-const input (Seq String))
(declare-const numbers (Seq String))

(assert (= input (seq.++ (seq.unit "123") (seq.unit "abc") (seq.unit "456"))))
(define-fun digits () RegLan (re.+ (re.range "0" "9")))
(assert (= numbers (seq.filter input digits)))
(assert (= (seq.nth numbers 0) "123"))
(assert (= (seq.nth numbers 1) "456"))

(check-sat)