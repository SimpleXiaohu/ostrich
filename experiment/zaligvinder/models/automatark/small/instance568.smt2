(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; www\x2Elookster\x2Enetnotificationuuid=qisezhin\u{2f}iqor\.ym
(assert (str.in_re X (str.to_re "www.lookster.netnotification\u{13}uuid=qisezhin/iqor.ym\u{13}\u{0a}")))
; ^(\+?)(\d{2,4})(\s?)(\-?)((\(0\))?)(\s?)(\d{2})(\s?)(\-?)(\d{3})(\s?)(\-?)(\d{2})(\s?)(\-?)(\d{2})
(assert (str.in_re X (re.++ (re.opt (str.to_re "+")) ((_ re.loop 2 4) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.opt (str.to_re "-")) (re.opt (str.to_re "(0)")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.opt (str.to_re "-")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.opt (str.to_re "-")) ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.opt (str.to_re "-")) ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "\u{0a}"))))
; ^([9]{1})([234789]{1})([0-9]{8})$
(assert (str.in_re X (re.++ ((_ re.loop 1 1) (str.to_re "9")) ((_ re.loop 1 1) (re.union (str.to_re "2") (str.to_re "3") (str.to_re "4") (str.to_re "7") (str.to_re "8") (str.to_re "9"))) ((_ re.loop 8 8) (re.range "0" "9")) (str.to_re "\u{0a}"))))
(check-sat)