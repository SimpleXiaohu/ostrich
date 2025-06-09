(set-logic QF_SLIA)
(declare-const s String)
(declare-const nums (Seq String))

(assert (= s "a1b22c333"))
(define-fun digit_re () RegLan (re.+ (re.range "0" "9")))
(assert (= nums (str.match_all s digit_re)))

(assert (= (seq.nth nums 0) "1"))
(assert (= (seq.nth nums 1) "22"))
(assert (= (seq.nth nums 2) "333"))

(check-sat)