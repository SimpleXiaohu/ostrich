(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ^(19[0-9]{2}|[2-9][0-9]{3})-((0(1|3|5|7|8)|10|12)-(0[1-9]|1[0-9]|2[0-9]|3[0-1])|(0(4|6|9)|11)-(0[1-9]|1[0-9]|2[0-9]|30)|(02)-(0[1-9]|1[0-9]|2[0-9]))\u{20}(0[0-9]|1[0-9]|2[0-3])(:[0-5][0-9]){2}$
(assert (str.in_re X (re.++ (re.union (re.++ (str.to_re "19") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (re.range "2" "9") ((_ re.loop 3 3) (re.range "0" "9")))) (str.to_re "-") (re.union (re.++ (re.union (re.++ (str.to_re "0") (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "8"))) (str.to_re "10") (str.to_re "12")) (str.to_re "-") (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "9")) (re.++ (str.to_re "3") (re.range "0" "1")))) (re.++ (re.union (re.++ (str.to_re "0") (re.union (str.to_re "4") (str.to_re "6") (str.to_re "9"))) (str.to_re "11")) (str.to_re "-") (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "9")) (str.to_re "30"))) (re.++ (str.to_re "02-") (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "9"))))) (str.to_re " ") (re.union (re.++ (str.to_re "0") (re.range "0" "9")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "3"))) ((_ re.loop 2 2) (re.++ (str.to_re ":") (re.range "0" "5") (re.range "0" "9"))) (str.to_re "\u{0a}"))))
; ^[^iIoOqQ'-]{10,17}$
(assert (not (str.in_re X (re.++ ((_ re.loop 10 17) (re.union (str.to_re "i") (str.to_re "I") (str.to_re "o") (str.to_re "O") (str.to_re "q") (str.to_re "Q") (str.to_re "'") (str.to_re "-"))) (str.to_re "\u{0a}")))))
; ^[a-zA-Z]{4}[a-zA-Z]{2}[a-zA-Z0-9]{2}[XXX0-9]{0,3}
(assert (str.in_re X (re.++ ((_ re.loop 4 4) (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) ((_ re.loop 0 3) (re.union (str.to_re "X") (re.range "0" "9"))) (str.to_re "\u{0a}"))))
(assert (> (str.len X) 10))
(check-sat)