(set-logic QF_SLIA)

(declare-const input (Seq String))
(declare-const filtered (Seq String))

(assert (= input (seq.++ (seq.unit "123") (seq.unit "abc") (seq.unit "xyz"))))

; Regex to match digits
(define-fun digit_re () RegLan (re.range "0" "9"))

; Should only keep "123"
(assert (= filtered (seq.filter input digit_re)))

; Contradiction: filtered must contain "123", but we say it's not there
(assert (not (= (seq.nth filtered 0) "123")))

(check-sat)