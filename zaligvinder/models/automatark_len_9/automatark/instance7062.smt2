(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; &#\d{2,5};
(assert (str.in_re X (re.++ (str.to_re "&#") ((_ re.loop 2 5) (re.range "0" "9")) (str.to_re ";\u{0a}"))))
(assert (> (str.len X) 9))
(check-sat)
