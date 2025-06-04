(set-logic QF_SLIA)

(declare-const str String)
(declare-const matches (Seq String))

(assert (= str "123abc456"))

; Regex to match digits
(define-fun digit_re () RegLan (re.range "0" "9"))

; Should return individual digits
(assert (= matches (str.match_all str digit_re)))

; Contradiction: matches is non-empty
(assert (= matches (as seq.empty (Seq String))))

(check-sat)