(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ^[-+]?([0-9]{1,3}[,]?)?([0-9]{3}[,]?)*[.]?[0-9]*$
(assert (not (str.in_re X (re.++ (re.opt (re.union (str.to_re "-") (str.to_re "+"))) (re.opt (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.opt (str.to_re ",")))) (re.* (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to_re ",")))) (re.opt (str.to_re ".")) (re.* (re.range "0" "9")) (str.to_re "\u{0a}")))))
(assert (> (str.len X) 10))
(check-sat)
