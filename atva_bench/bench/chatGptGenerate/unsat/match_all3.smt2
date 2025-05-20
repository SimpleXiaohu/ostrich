(set-logic QF_SLIA)
(declare-const log String)
(declare-const matches (Seq String))

(assert (= log "error code 404"))
(define-fun digit_re () RegLan (re.+ (re.range "0" "9")))
(assert (= matches (str.match_all log digit_re)))
(assert (= matches (as seq.empty (Seq String))))

(check-sat)