(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ^(3[0-1]|2[0-9]|1[0-9]|0[1-9])[\s{1}|\/|-](Jan|JAN|Feb|FEB|Mar|MAR|Apr|APR|May|MAY|Jun|JUN|Jul|JUL|Aug|AUG|Sep|SEP|Oct|OCT|Nov|NOV|Dec|DEC)[\s{1}|\/|-]\d{4}$
(assert (not (str.in_re X (re.++ (re.union (re.++ (str.to_re "3") (re.range "0" "1")) (re.++ (str.to_re "2") (re.range "0" "9")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "0") (re.range "1" "9"))) (re.union (str.to_re "{") (str.to_re "1") (str.to_re "}") (str.to_re "|") (str.to_re "/") (str.to_re "-") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) (re.union (str.to_re "Jan") (str.to_re "JAN") (str.to_re "Feb") (str.to_re "FEB") (str.to_re "Mar") (str.to_re "MAR") (str.to_re "Apr") (str.to_re "APR") (str.to_re "May") (str.to_re "MAY") (str.to_re "Jun") (str.to_re "JUN") (str.to_re "Jul") (str.to_re "JUL") (str.to_re "Aug") (str.to_re "AUG") (str.to_re "Sep") (str.to_re "SEP") (str.to_re "Oct") (str.to_re "OCT") (str.to_re "Nov") (str.to_re "NOV") (str.to_re "Dec") (str.to_re "DEC")) (re.union (str.to_re "{") (str.to_re "1") (str.to_re "}") (str.to_re "|") (str.to_re "/") (str.to_re "-") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "\u{0a}")))))
; are\s+Toolbar\s+X-Mailer\x3AInformationsearchnuggetspastb\x2Efreeprod\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "are") (re.+ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "Toolbar") (re.+ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "X-Mailer:\u{13}Informationsearchnugget\u{13}spastb.freeprod.com\u{0a}"))))
; ^(\d{1,3},)?(\d{3},)+\d{3}(\.\d*)?$|^(\d*)(\.\d*)?$
(assert (not (str.in_re X (re.union (re.++ (re.opt (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re ","))) (re.+ (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re ","))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.++ (str.to_re ".") (re.* (re.range "0" "9"))))) (re.++ (re.* (re.range "0" "9")) (re.opt (re.++ (str.to_re ".") (re.* (re.range "0" "9")))) (str.to_re "\u{0a}"))))))
(check-sat)