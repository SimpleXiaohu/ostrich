(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ^([a-zA-Z0-9][-a-zA-Z0-9]*[a-zA-Z0-9]\.)+([a-zA-Z0-9]{3,5})$
(assert (str.in_re X (re.++ (re.+ (re.++ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")) (re.* (re.union (str.to_re "-") (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")) (str.to_re "."))) ((_ re.loop 3 5) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "\u{0a}"))))
; ^((29\/0?2\/[0-9]{0,2}(04|08|92|96|([1|3|5|7][2|6])|[2|4|6|8][0|4|8]))|(((28|[12][0-7]|0?[1-9])\/0?2)|((30|[12][0-9]|0?[1-9])\/(0?(4|6|9)|11))|((31|[12][0-9]|0?[1-9])\/(0?(1|3|5|7|8))|(10|12)))\/(\d{2}|\d{4}))$
(assert (not (str.in_re X (re.++ (re.union (re.++ (str.to_re "29/") (re.opt (str.to_re "0")) (str.to_re "2/") ((_ re.loop 0 2) (re.range "0" "9")) (re.union (str.to_re "04") (str.to_re "08") (str.to_re "92") (str.to_re "96") (re.++ (re.union (str.to_re "1") (str.to_re "|") (str.to_re "3") (str.to_re "5") (str.to_re "7")) (re.union (str.to_re "2") (str.to_re "|") (str.to_re "6"))) (re.++ (re.union (str.to_re "2") (str.to_re "|") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (re.union (str.to_re "0") (str.to_re "|") (str.to_re "4") (str.to_re "8"))))) (re.++ (re.union (re.++ (re.union (str.to_re "28") (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "7")) (re.++ (re.opt (str.to_re "0")) (re.range "1" "9"))) (str.to_re "/") (re.opt (str.to_re "0")) (str.to_re "2")) (re.++ (re.union (str.to_re "30") (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")) (re.++ (re.opt (str.to_re "0")) (re.range "1" "9"))) (str.to_re "/") (re.union (re.++ (re.opt (str.to_re "0")) (re.union (str.to_re "4") (str.to_re "6") (str.to_re "9"))) (str.to_re "11"))) (re.++ (re.union (str.to_re "31") (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")) (re.++ (re.opt (str.to_re "0")) (re.range "1" "9"))) (str.to_re "/") (re.opt (str.to_re "0")) (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "8"))) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "2")))) (str.to_re "/") (re.union ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 4 4) (re.range "0" "9"))))) (str.to_re "\u{0a}")))))
; actualnames\.comclient\x2Ebaigoo\x2Ecomzzzvmkituktgr\u{2f}etiexpsp2-InformationHost\x3A
(assert (not (str.in_re X (str.to_re "actualnames.comclient.baigoo.comzzzvmkituktgr/etiexpsp2-InformationHost:\u{0a}"))))
(assert (> (str.len X) 10))
(check-sat)
