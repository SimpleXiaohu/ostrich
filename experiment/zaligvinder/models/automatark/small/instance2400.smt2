(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; [A-Za-z]{1,2}[\d]{1,2}[A-Za-z]{0,1}
(assert (str.in_re X (re.++ ((_ re.loop 1 2) (re.union (re.range "A" "Z") (re.range "a" "z"))) ((_ re.loop 1 2) (re.range "0" "9")) (re.opt (re.union (re.range "A" "Z") (re.range "a" "z"))) (str.to_re "\u{0a}"))))
; ^[2-5](2|4|6|8|0)(A(A)?|B|C|D(D(D)?)?|E|F|G|H)$
(assert (not (str.in_re X (re.++ (re.range "2" "5") (re.union (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8") (str.to_re "0")) (re.union (re.++ (str.to_re "A") (re.opt (str.to_re "A"))) (str.to_re "B") (str.to_re "C") (re.++ (str.to_re "D") (re.opt (re.++ (str.to_re "D") (re.opt (str.to_re "D"))))) (str.to_re "E") (str.to_re "F") (str.to_re "G") (str.to_re "H")) (str.to_re "\u{0a}")))))
; ^\((([2-7][0-9]{2})|(8(0[^0]|[^0]0|1\d|2[^2]|[^2]2|3[^3]|[^3]3|4[^4]|[^4]4|5[^5]|[^5]5|6[^6]|[^6]6|7[^7]|[^7]7|8[^8]|[^8]8|9\d){1})|(9(0[^0]|[^0]0|[1-9][1-9])))\)\s?[0-9]{3}(-|\s)?[0-9]{4}$|^(([2-7][0-9]{2})|(8(0[^0]|[^0]0|1\d|2[^2]|[^2]2|3[^3]|[^3]3|4[^4]|[^4]4|5[^5]|[^5]5|6[^6]|[^6]6|7[^7]|[^7]7|8[^8]|[^8]8|9\d){1})|(9(0[^0]|[^0]0|[1-9][1-9])))-?[0-9]{3}-?[0-9]{4}$
(assert (str.in_re X (re.union (re.++ (str.to_re "(") (re.union (re.++ (re.range "2" "7") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to_re "8") ((_ re.loop 1 1) (re.union (re.++ (str.to_re "0") (re.comp (str.to_re "0"))) (re.++ (re.comp (str.to_re "0")) (str.to_re "0")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.comp (str.to_re "2"))) (re.++ (re.comp (str.to_re "2")) (str.to_re "2")) (re.++ (str.to_re "3") (re.comp (str.to_re "3"))) (re.++ (re.comp (str.to_re "3")) (str.to_re "3")) (re.++ (str.to_re "4") (re.comp (str.to_re "4"))) (re.++ (re.comp (str.to_re "4")) (str.to_re "4")) (re.++ (str.to_re "5") (re.comp (str.to_re "5"))) (re.++ (re.comp (str.to_re "5")) (str.to_re "5")) (re.++ (str.to_re "6") (re.comp (str.to_re "6"))) (re.++ (re.comp (str.to_re "6")) (str.to_re "6")) (re.++ (str.to_re "7") (re.comp (str.to_re "7"))) (re.++ (re.comp (str.to_re "7")) (str.to_re "7")) (re.++ (str.to_re "8") (re.comp (str.to_re "8"))) (re.++ (re.comp (str.to_re "8")) (str.to_re "8")) (re.++ (str.to_re "9") (re.range "0" "9"))))) (re.++ (str.to_re "9") (re.union (re.++ (str.to_re "0") (re.comp (str.to_re "0"))) (re.++ (re.comp (str.to_re "0")) (str.to_re "0")) (re.++ (re.range "1" "9") (re.range "1" "9"))))) (str.to_re ")") (re.opt (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re "-") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (re.union (re.++ (re.range "2" "7") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to_re "8") ((_ re.loop 1 1) (re.union (re.++ (str.to_re "0") (re.comp (str.to_re "0"))) (re.++ (re.comp (str.to_re "0")) (str.to_re "0")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.comp (str.to_re "2"))) (re.++ (re.comp (str.to_re "2")) (str.to_re "2")) (re.++ (str.to_re "3") (re.comp (str.to_re "3"))) (re.++ (re.comp (str.to_re "3")) (str.to_re "3")) (re.++ (str.to_re "4") (re.comp (str.to_re "4"))) (re.++ (re.comp (str.to_re "4")) (str.to_re "4")) (re.++ (str.to_re "5") (re.comp (str.to_re "5"))) (re.++ (re.comp (str.to_re "5")) (str.to_re "5")) (re.++ (str.to_re "6") (re.comp (str.to_re "6"))) (re.++ (re.comp (str.to_re "6")) (str.to_re "6")) (re.++ (str.to_re "7") (re.comp (str.to_re "7"))) (re.++ (re.comp (str.to_re "7")) (str.to_re "7")) (re.++ (str.to_re "8") (re.comp (str.to_re "8"))) (re.++ (re.comp (str.to_re "8")) (str.to_re "8")) (re.++ (str.to_re "9") (re.range "0" "9"))))) (re.++ (str.to_re "9") (re.union (re.++ (str.to_re "0") (re.comp (str.to_re "0"))) (re.++ (re.comp (str.to_re "0")) (str.to_re "0")) (re.++ (re.range "1" "9") (re.range "1" "9"))))) (re.opt (str.to_re "-")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to_re "-")) ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "\u{0a}")))))
; (^([0-9]+[.]+[0-9]+)|(0)$)
(assert (str.in_re X (re.++ (re.union (re.++ (re.+ (re.range "0" "9")) (re.+ (str.to_re ".")) (re.+ (re.range "0" "9"))) (str.to_re "0")) (str.to_re "\u{0a}"))))
(check-sat)