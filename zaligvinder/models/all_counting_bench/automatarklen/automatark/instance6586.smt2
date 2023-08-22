(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; www\x2Edotcomtoolbar\x2Ecom\d+DesktopAddressIDENTIFY
(assert (not (str.in_re X (re.++ (str.to_re "www.dotcomtoolbar.com") (re.+ (re.range "0" "9")) (str.to_re "DesktopAddressIDENTIFY\u{0a}")))))
; \u{28}\u{29}\s+WatchDog\sNetspyt=WeHost\x3A\x2Fcgi\x2Flogurl\.cgiwww\x2Ekliksearch\x2Ecom1\x2E3\x7D\x7BTrojan\x3A
(assert (not (str.in_re X (re.++ (str.to_re "()") (re.+ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "WatchDog") (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) (str.to_re "Netspyt=WeHost:/cgi/logurl.cgiwww.kliksearch.com1.3}{Trojan:\u{0a}")))))
; ([A-Za-z]{0,}[\.\,\s]{0,}[A-Za-z]{1,}[\.\s]{1,}[0-9]{1,2}[\,\s]{0,}[0-9]{4})| ([0-9]{0,4}[-,\s]{0,}[A-Za-z]{3,9}[-,\s]{0,}[0-9]{1,2}[-,\s]{0,}[A-Za-z]{0,8})| ([0-9]{1,4}[\/\.\-][0-9]{1,4}[\/\.\-][0-9]{1,4})
(assert (not (str.in_re X (re.union (re.++ (re.* (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.* (re.union (str.to_re ".") (str.to_re ",") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.+ (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.+ (re.union (str.to_re ".") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 1 2) (re.range "0" "9")) (re.* (re.union (str.to_re ",") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (str.to_re " ") ((_ re.loop 0 4) (re.range "0" "9")) (re.* (re.union (str.to_re "-") (str.to_re ",") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 3 9) (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.* (re.union (str.to_re "-") (str.to_re ",") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 1 2) (re.range "0" "9")) (re.* (re.union (str.to_re "-") (str.to_re ",") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 0 8) (re.union (re.range "A" "Z") (re.range "a" "z")))) (re.++ (str.to_re " \u{0a}") ((_ re.loop 1 4) (re.range "0" "9")) (re.union (str.to_re "/") (str.to_re ".") (str.to_re "-")) ((_ re.loop 1 4) (re.range "0" "9")) (re.union (str.to_re "/") (str.to_re ".") (str.to_re "-")) ((_ re.loop 1 4) (re.range "0" "9")))))))
; \x5D\u{25}20\x5BPort_\d+TM_SEARCH3engineto=\x2Fezsb\s\x3A
(assert (str.in_re X (re.++ (str.to_re "]%20[Port_") (re.+ (re.range "0" "9")) (str.to_re "TM_SEARCH3engineto=/ezsb") (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) (str.to_re ":\u{0a}"))))
(assert (> (str.len X) 10))
(check-sat)