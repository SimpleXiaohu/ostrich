(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; /\u{2e}tif(f)?([\?\u{5c}\u{2f}]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.tif") (re.opt (str.to_re "f")) (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{0a}"))))
; ^(((0[1-9]|1[012])/(0[1-9]|1\d|2[0-8])|(0[13456789]|1[012])/(29|30)|(0[13578]|1[02])/31)/[2-9]\d{3}|02/29/(([2-9]\d)(0[48]|[2468][048]|[13579][26])|(([2468][048]|[3579][26])00)))$
(assert (str.in_re X (re.++ (re.union (re.++ (re.union (re.++ (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2")))) (str.to_re "/") (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "8")))) (re.++ (re.union (re.++ (str.to_re "0") (re.union (str.to_re "1") (str.to_re "3") (str.to_re "4") (str.to_re "5") (str.to_re "6") (str.to_re "7") (str.to_re "8") (str.to_re "9"))) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2")))) (str.to_re "/") (re.union (str.to_re "29") (str.to_re "30"))) (re.++ (re.union (re.++ (str.to_re "0") (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "8"))) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "2")))) (str.to_re "/31"))) (str.to_re "/") (re.range "2" "9") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (str.to_re "02/29/") (re.union (re.++ (re.union (re.++ (str.to_re "0") (re.union (str.to_re "4") (str.to_re "8"))) (re.++ (re.union (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "9")) (re.union (str.to_re "2") (str.to_re "6")))) (re.range "2" "9") (re.range "0" "9")) (re.++ (re.union (re.++ (re.union (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (re.union (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "9")) (re.union (str.to_re "2") (str.to_re "6")))) (str.to_re "00"))))) (str.to_re "\u{0a}"))))
; (01*0|1)*
(assert (not (str.in_re X (re.++ (re.* (re.union (re.++ (str.to_re "0") (re.* (str.to_re "1")) (str.to_re "0")) (str.to_re "1"))) (str.to_re "\u{0a}")))))
; User-Agent\x3A\d+User-Agent\x3A\d+connectedNodes\/cgi-bin\/PopupV
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.range "0" "9")) (str.to_re "User-Agent:") (re.+ (re.range "0" "9")) (str.to_re "connectedNodes/cgi-bin/PopupV\u{0a}"))))
; CUSTOM\swww\x2Elocators\x2Ecom\d+Seconds\-
(assert (not (str.in_re X (re.++ (str.to_re "CUSTOM") (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) (str.to_re "www.locators.com") (re.+ (re.range "0" "9")) (str.to_re "Seconds-\u{0a}")))))
(assert (> (str.len X) 10))
(check-sat)
