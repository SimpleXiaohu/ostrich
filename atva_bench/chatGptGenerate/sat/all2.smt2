(set-logic QF_SLIA)

(declare-const input String)
(declare-const split (Seq String))
(declare-const filtered (Seq String))
(declare-const result String)

(assert (= input "foo,,bar,,baz"))

; Split by ","
(assert (= split (str.split input ",")))

; Filter out empty strings using regex for non-empty content
(define-fun non_empty_re () RegLan (re.+ re.allchar))
(assert (= filtered (seq.filter split non_empty_re)))

; Join filtered sequence back with ":"
(assert (= result (seq.join filtered ":")))

; Should yield "foo:bar:baz"
(assert (= result "foo:bar:baz"))

(check-sat)
(get-model)
