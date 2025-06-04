(set-logic QF_SLIA)
(declare-const items (Seq String))
(declare-const filtered (Seq String))

(assert (= items (seq.++ (seq.unit "apple") (seq.unit "123"))))
(define-fun alpha_only () RegLan (re.+ (re.range "a" "z")))
(assert (= filtered (seq.filter items alpha_only)))
(assert (= (seq.nth filtered 1) "123"))

(check-sat)