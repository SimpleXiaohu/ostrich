(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; /User-Agent\u{3a}\u{20}Agent\d{5,9}/Hi
(assert (not (str.in_re X (re.++ (str.to_re "/User-Agent: Agent") ((_ re.loop 5 9) (re.range "0" "9")) (str.to_re "/Hi\u{0a}")))))
; (^(\d{3}.\d{3}.\d{3}-\d{2})|(\d{11})$)
(assert (not (str.in_re X (re.++ (re.union (re.++ ((_ re.loop 3 3) (re.range "0" "9")) re.allchar ((_ re.loop 3 3) (re.range "0" "9")) re.allchar ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 2 2) (re.range "0" "9"))) ((_ re.loop 11 11) (re.range "0" "9"))) (str.to_re "\u{0a}")))))
; ^((((19|20)(([02468][048])|([13579][26]))-02-29))|((20[0-9][0-9])|(19[0-9][0-9]))-((((0[1-9])|(1[0-2]))-((0[1-9])|(1\d)|(2[0-8])))|((((0[13578])|(1[02]))-31)|(((0[1,3-9])|(1[0-2]))-(29|30)))))$
(assert (str.in_re X (re.++ (re.union (re.++ (re.union (str.to_re "19") (str.to_re "20")) (re.union (re.++ (re.union (str.to_re "0") (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "9")) (re.union (str.to_re "2") (str.to_re "6")))) (str.to_re "-02-29")) (re.++ (re.union (re.++ (str.to_re "20") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to_re "19") (re.range "0" "9") (re.range "0" "9"))) (str.to_re "-") (re.union (re.++ (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "2"))) (str.to_re "-") (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "8")))) (re.++ (re.union (re.++ (str.to_re "0") (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "8"))) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "2")))) (str.to_re "-31")) (re.++ (re.union (re.++ (str.to_re "0") (re.union (str.to_re "1") (str.to_re ",") (re.range "3" "9"))) (re.++ (str.to_re "1") (re.range "0" "2"))) (str.to_re "-") (re.union (str.to_re "29") (str.to_re "30")))))) (str.to_re "\u{0a}"))))
; ^([012346789][0-9]{4})$
(assert (not (str.in_re X (re.++ (str.to_re "\u{0a}") (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2") (str.to_re "3") (str.to_re "4") (str.to_re "6") (str.to_re "7") (str.to_re "8") (str.to_re "9")) ((_ re.loop 4 4) (re.range "0" "9"))))))
; /\x2Epor([\?\u{5c}\u{2f}]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.por") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{0a}"))))
(assert (> (str.len X) 10))
(check-sat)
