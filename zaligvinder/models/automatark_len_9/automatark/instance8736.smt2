(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; /^\x2F\d{10}$/U
(assert (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 10 10) (re.range "0" "9")) (str.to_re "/U\u{0a}"))))
(assert (> (str.len X) 9))
(check-sat)
