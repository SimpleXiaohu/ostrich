(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; (^\d{1,9})+(,\d{1,9})*$
(assert (str.in_re X (re.++ (re.+ ((_ re.loop 1 9) (re.range "0" "9"))) (re.* (re.++ (str.to_re ",") ((_ re.loop 1 9) (re.range "0" "9")))) (str.to_re "\u{0a}"))))
(check-sat)