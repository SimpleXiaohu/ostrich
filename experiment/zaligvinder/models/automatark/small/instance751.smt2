(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ^-?([1-8]?[1-9]|[1-9]0)\.{1}\d{1,6}
(assert (str.in_re X (re.++ (re.opt (str.to_re "-")) (re.union (re.++ (re.opt (re.range "1" "8")) (re.range "1" "9")) (re.++ (re.range "1" "9") (str.to_re "0"))) ((_ re.loop 1 1) (str.to_re ".")) ((_ re.loop 1 6) (re.range "0" "9")) (str.to_re "\u{0a}"))))
(check-sat)