(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; www\x2EZSearchResults\x2Ecom\dBar.*sponsor2\.ucmore\.com
(assert (not (str.in_re X (re.++ (str.to_re "www.ZSearchResults.com\u{13}") (re.range "0" "9") (str.to_re "Bar") (re.* re.allchar) (str.to_re "sponsor2.ucmore.com\u{0a}")))))
; ^[1]?[-\.\s]?(\(\d{3}\)|\d{3}){1}[-\.\s]?\d{3}[-\.\s]?\d{4}(\s+|\s*[-\.x]{1}\d{1,6})?$
(assert (str.in_re X (re.++ (re.opt (str.to_re "1")) (re.opt (re.union (str.to_re "-") (str.to_re ".") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 1 1) (re.union (re.++ (str.to_re "(") ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re ")")) ((_ re.loop 3 3) (re.range "0" "9")))) (re.opt (re.union (str.to_re "-") (str.to_re ".") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re "-") (str.to_re ".") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (re.union (re.+ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.++ (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 1 1) (re.union (str.to_re "-") (str.to_re ".") (str.to_re "x"))) ((_ re.loop 1 6) (re.range "0" "9"))))) (str.to_re "\u{0a}"))))
; ^((([0-9]|([0-1][0-9])|(2[0-3]))[hH:][0-5][0-9])|(([0-9]|(1[0-9])|(2[0-3]))[hH]))$
(assert (str.in_re X (re.++ (re.union (re.++ (re.union (re.range "0" "9") (re.++ (re.range "0" "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "3"))) (re.union (str.to_re "h") (str.to_re "H") (str.to_re ":")) (re.range "0" "5") (re.range "0" "9")) (re.++ (re.union (re.range "0" "9") (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "3"))) (re.union (str.to_re "h") (str.to_re "H")))) (str.to_re "\u{0a}"))))
(check-sat)