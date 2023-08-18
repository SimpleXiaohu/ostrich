(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ^(\+27|27)?(\()?0?[87][23467](\))?( |-|\.|_)?(\d{3})( |-|\.|_)?(\d{4})
(assert (not (str.in_re X (re.++ (re.opt (re.union (str.to_re "+27") (str.to_re "27"))) (re.opt (str.to_re "(")) (re.opt (str.to_re "0")) (re.union (str.to_re "8") (str.to_re "7")) (re.union (str.to_re "2") (str.to_re "3") (str.to_re "4") (str.to_re "6") (str.to_re "7")) (re.opt (str.to_re ")")) (re.opt (re.union (str.to_re " ") (str.to_re "-") (str.to_re ".") (str.to_re "_"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "-") (str.to_re ".") (str.to_re "_"))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "\u{0a}")))))
; spyblpat.*is[^\n\r]*BarFrom\x3AHost\x3Agdvsotuqwsg\u{2f}dxt\.hdPASSW=
(assert (str.in_re X (re.++ (str.to_re "spyblpat") (re.* re.allchar) (str.to_re "is") (re.* (re.union (str.to_re "\u{0a}") (str.to_re "\u{0d}"))) (str.to_re "BarFrom:Host:gdvsotuqwsg/dxt.hdPASSW=\u{0a}"))))
(assert (> (str.len X) 9))
(check-sat)
