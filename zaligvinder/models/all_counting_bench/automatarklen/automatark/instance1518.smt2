(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ^(19|20)\d\d[-/.]([1-9]|0[1-9]|1[012])[- /.]([1-9]|0[1-9]|[12][0-9]|3[01])$
(assert (str.in_re X (re.++ (re.union (str.to_re "19") (str.to_re "20")) (re.range "0" "9") (re.range "0" "9") (re.union (str.to_re "-") (str.to_re "/") (str.to_re ".")) (re.union (re.range "1" "9") (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2")))) (re.union (str.to_re "-") (str.to_re " ") (str.to_re "/") (str.to_re ".")) (re.union (re.range "1" "9") (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")) (re.++ (str.to_re "3") (re.union (str.to_re "0") (str.to_re "1")))) (str.to_re "\u{0a}"))))
; ^([A-Z]{3}\s?(\d{3}|\d{2}|d{1})\s?[A-Z])|([A-Z]\s?(\d{3}|\d{2}|\d{1})\s?[A-Z]{3})$
(assert (not (str.in_re X (re.union (re.++ ((_ re.loop 3 3) (re.range "A" "Z")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.union ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 1 1) (str.to_re "d"))) (re.opt (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.range "A" "Z")) (re.++ (str.to_re "\u{0a}") (re.range "A" "Z") (re.opt (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.union ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.opt (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 3 3) (re.range "A" "Z")))))))
; YWRtaW46cGFzc3dvcmQ\s+www\x2Ealfacleaner\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "YWRtaW46cGFzc3dvcmQ") (re.+ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "www.alfacleaner.com\u{0a}"))))
(assert (> (str.len X) 10))
(check-sat)
