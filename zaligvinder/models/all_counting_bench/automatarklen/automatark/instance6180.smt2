(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ^[2-7]{1}[0-9]{3}$
(assert (not (str.in_re X (re.++ ((_ re.loop 1 1) (re.range "2" "7")) ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "\u{0a}")))))
(assert (> (str.len X) 10))
(check-sat)
