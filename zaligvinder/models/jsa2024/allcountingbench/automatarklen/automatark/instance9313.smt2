(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ^(\+)?([9]{1}[2]{1})?-? ?(\()?([0]{1})?[1-9]{2,4}(\))?-? ??(\()?[1-9]{4,7}(\))?$
(assert (not (str.in_re X (re.++ (re.opt (str.to_re "+")) (re.opt (re.++ ((_ re.loop 1 1) (str.to_re "9")) ((_ re.loop 1 1) (str.to_re "2")))) (re.opt (str.to_re "-")) (re.opt (str.to_re " ")) (re.opt (str.to_re "(")) (re.opt ((_ re.loop 1 1) (str.to_re "0"))) ((_ re.loop 2 4) (re.range "1" "9")) (re.opt (str.to_re ")")) (re.opt (str.to_re "-")) (re.opt (str.to_re " ")) (re.opt (str.to_re "(")) ((_ re.loop 4 7) (re.range "1" "9")) (re.opt (str.to_re ")")) (str.to_re "\u{0a}")))))
; Host\x3A\s+Host\s+Host\u{3a}InformationX-OSSproxy\u{3a}as\x2Estarware\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "Host") (re.+ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "Host:InformationX-OSSproxy:as.starware.com\u{0a}")))))
; ^(((((0?[1-9]|[12]\d|3[01])[-/]([0]?[13578]|1[02]))|((0?[1-9]|[12]\d|30)[-/]([0]?[469]|11))|(([01]?\d|2[0-8])[-/]0?2))[-/]((20|19)?\d{2}|\d{1,2}))|(29[-/]0?2[-/]((19)|(20))?([13579][26]|[24680][048])))$
(assert (str.in_re X (re.++ (re.union (re.++ (re.union (re.++ (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")) (re.++ (str.to_re "3") (re.union (str.to_re "0") (str.to_re "1")))) (re.union (str.to_re "-") (str.to_re "/")) (re.union (re.++ (re.opt (str.to_re "0")) (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "8"))) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "2"))))) (re.++ (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")) (str.to_re "30")) (re.union (str.to_re "-") (str.to_re "/")) (re.union (re.++ (re.opt (str.to_re "0")) (re.union (str.to_re "4") (str.to_re "6") (str.to_re "9"))) (str.to_re "11"))) (re.++ (re.union (re.++ (re.opt (re.union (str.to_re "0") (str.to_re "1"))) (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "8"))) (re.union (str.to_re "-") (str.to_re "/")) (re.opt (str.to_re "0")) (str.to_re "2"))) (re.union (str.to_re "-") (str.to_re "/")) (re.union (re.++ (re.opt (re.union (str.to_re "20") (str.to_re "19"))) ((_ re.loop 2 2) (re.range "0" "9"))) ((_ re.loop 1 2) (re.range "0" "9")))) (re.++ (str.to_re "29") (re.union (str.to_re "-") (str.to_re "/")) (re.opt (str.to_re "0")) (str.to_re "2") (re.union (str.to_re "-") (str.to_re "/")) (re.opt (re.union (str.to_re "19") (str.to_re "20"))) (re.union (re.++ (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "9")) (re.union (str.to_re "2") (str.to_re "6"))) (re.++ (re.union (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8") (str.to_re "0")) (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8")))))) (str.to_re "\u{0a}"))))
; ^\w*[-]*\w*\\\w*$
(assert (not (str.in_re X (re.++ (re.* (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.* (str.to_re "-")) (re.* (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "\u{5c}") (re.* (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "\u{0a}")))))
; Log[^\n\r]*Host\x3A\dHOST\x3AUser-Agent\x3A
(assert (not (str.in_re X (re.++ (str.to_re "Log") (re.* (re.union (str.to_re "\u{0a}") (str.to_re "\u{0d}"))) (str.to_re "Host:") (re.range "0" "9") (str.to_re "HOST:User-Agent:\u{0a}")))))
(assert (> (str.len X) 10))
(check-sat)
