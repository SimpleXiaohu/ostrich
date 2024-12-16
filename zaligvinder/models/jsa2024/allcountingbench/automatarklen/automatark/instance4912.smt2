(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; Subject\x3A[^\n\r]*Arrow[^\n\r]*whenu\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "Subject:") (re.* (re.union (str.to_re "\u{0a}") (str.to_re "\u{0d}"))) (str.to_re "Arrow") (re.* (re.union (str.to_re "\u{0a}") (str.to_re "\u{0d}"))) (str.to_re "whenu.com\u{13}\u{0a}")))))
; \b((J(AN|UN|UL))|FEB|MAR|(A(PR|UG))|MAY|SEP|NOV|DEC|OCT)\s*(0?[1-9]|1[0-9]|2[0-9]|3[0-1])\s*(\,)\s*(0[0-9])\b
(assert (str.in_re X (re.++ (re.union (re.++ (str.to_re "J") (re.union (str.to_re "AN") (str.to_re "UN") (str.to_re "UL"))) (str.to_re "FEB") (str.to_re "MAR") (re.++ (str.to_re "A") (re.union (str.to_re "PR") (str.to_re "UG"))) (str.to_re "MAY") (str.to_re "SEP") (str.to_re "NOV") (str.to_re "DEC") (str.to_re "OCT")) (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "9")) (re.++ (str.to_re "3") (re.range "0" "1"))) (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re ",") (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "\u{0a}0") (re.range "0" "9"))))
; /\u{2e}skm([\?\u{5c}\u{2f}]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.skm") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{0a}"))))
; /^SSID=[a-zA-Z\d]{43}\x3B\u{20}A=[0-3]$/C
(assert (not (str.in_re X (re.++ (str.to_re "/SSID=") ((_ re.loop 43 43) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "; A=") (re.range "0" "3") (str.to_re "/C\u{0a}")))))
(assert (> (str.len X) 10))
(check-sat)