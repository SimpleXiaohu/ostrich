(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ^\d{3}\s?\d{3}$
(assert (str.in_re X (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "\u{0a}"))))
(assert (> (str.len X) 9))
(check-sat)
