(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; upgrade\x2Eqsrch\x2Einfo[^\n\r]*dcww\x2Edmcast\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "upgrade.qsrch.info") (re.* (re.union (str.to_re "\u{0a}") (str.to_re "\u{0d}"))) (str.to_re "dcww.dmcast.com\u{0a}"))))
; ^((\+)?(\d{2}[-])?(\d{10}){1})?(\d{11}){0,1}?$
(assert (not (str.in_re X (re.++ (re.opt (re.++ (re.opt (str.to_re "+")) (re.opt (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "-"))) ((_ re.loop 1 1) ((_ re.loop 10 10) (re.range "0" "9"))))) (re.opt ((_ re.loop 11 11) (re.range "0" "9"))) (str.to_re "\u{0a}")))))
(assert (> (str.len X) 10))
(check-sat)
