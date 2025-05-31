(set-logic QF_SLIA)
(declare-const raw String)
(declare-const chunks (Seq String))
(declare-const trimmed (Seq String))
(declare-const result String)

(assert (= raw "foo, ,bar"))
(assert (= chunks (str.split raw ",")))

(define-fun non_empty () RegLan (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))))
(assert (= trimmed (seq.filter chunks non_empty)))
(assert (= result (seq.join trimmed ",")))
(assert (= result "foo,bar"))

(check-sat)