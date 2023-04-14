(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; (\d{4,6})
(assert (str.in_re X (re.++ ((_ re.loop 4 6) (re.range "0" "9")) (str.to_re "\u{0a}"))))
(check-sat)