(set-logic QF_SLIA)

(declare-const input String)
(declare-const parts (Seq String))
(declare-const filtered (Seq String))
(declare-const result String)

(assert (= input "apple,,banana,,carrot"))

; Split by ","
(assert (= parts (str.split input ",")))

; Match strings with at least one lowercase letter
(define-fun non_empty_re () RegLan (re.range "a" "z"))

; Should filter out empty strings
(assert (= filtered (seq.filter parts non_empty_re)))

; Join with comma
(assert (= result (seq.join filtered ",")))

; Contradiction: the result must be "apple,banana,carrot"
(assert (not (= result "apple,banana,carrot")))

(check-sat)