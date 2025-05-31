(set-logic QF_SLIA)

(declare-const s (Seq String))
(declare-const digits (Seq String))

; Define regex to match digits
(define-fun digit_re () RegLan (re.range "0" "9"))

(assert (= s (seq.++ (seq.unit "a") (seq.unit "5") (seq.unit "z") (seq.unit "2"))))

(assert (= digits (seq.filter s digit_re))) ; Should keep "5" and "2"

(assert (= (seq.nth digits 0) "5"))
(assert (= (seq.nth digits 1) "2"))

(check-sat)
(get-model)