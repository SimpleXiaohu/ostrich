(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ^\s*(?i:)((1[0-2])|(0[1-9])|([123456789])):(([0-5][0-9])|([123456789]))\s(am|pm)\s*$
(assert (not (str.in_re X (re.++ (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.union (re.++ (str.to_re "1") (re.range "0" "2")) (re.++ (str.to_re "0") (re.range "1" "9")) (str.to_re "1") (str.to_re "2") (str.to_re "3") (str.to_re "4") (str.to_re "5") (str.to_re "6") (str.to_re "7") (str.to_re "8") (str.to_re "9")) (str.to_re ":") (re.union (re.++ (re.range "0" "5") (re.range "0" "9")) (str.to_re "1") (str.to_re "2") (str.to_re "3") (str.to_re "4") (str.to_re "5") (str.to_re "6") (str.to_re "7") (str.to_re "8") (str.to_re "9")) (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) (re.union (str.to_re "am") (str.to_re "pm")) (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "\u{0a}")))))
; ((http(s)?:\/\/)?[a-z0-9-]{3,}(\.[a-z0-9-]{2,})+(:[0-9]+)?((\/[^\/\s.]+\.[^\/\s.,!]+)|(\/[^\/\s.,!]*))*)
(assert (str.in_re X (re.++ (str.to_re "\u{0a}") (re.opt (re.++ (str.to_re "http") (re.opt (str.to_re "s")) (str.to_re "://"))) (re.+ (re.++ (str.to_re ".") ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "-"))) (re.* (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "-"))))) (re.opt (re.++ (str.to_re ":") (re.+ (re.range "0" "9")))) (re.* (re.union (re.++ (str.to_re "/") (re.+ (re.union (str.to_re "/") (str.to_re ".") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re ".") (re.+ (re.union (str.to_re "/") (str.to_re ".") (str.to_re ",") (str.to_re "!") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")))) (re.++ (str.to_re "/") (re.* (re.union (str.to_re "/") (str.to_re ".") (str.to_re ",") (str.to_re "!") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")))))) ((_ re.loop 3 3) (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "-"))) (re.* (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "-"))))))
(assert (> (str.len X) 10))
(check-sat)
