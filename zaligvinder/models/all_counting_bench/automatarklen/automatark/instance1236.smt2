(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ^((0?[1-9]|1[012])(:[0-5]\d){1,2}(\ [AaPp][Mm]))$
(assert (not (str.in_re X (re.++ (str.to_re "\u{0a}") (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2")))) ((_ re.loop 1 2) (re.++ (str.to_re ":") (re.range "0" "5") (re.range "0" "9"))) (str.to_re " ") (re.union (str.to_re "A") (str.to_re "a") (str.to_re "P") (str.to_re "p")) (re.union (str.to_re "M") (str.to_re "m"))))))
; ^([0]\d|[1][0-2])\/([0-2]\d|[3][0-1])\/([2][01]|[1][6-9])\d{2}(\s([0-1]\d|[2][0-3])(\:[0-5]\d){1,2})?$
(assert (not (str.in_re X (re.++ (re.union (re.++ (str.to_re "0") (re.range "0" "9")) (re.++ (str.to_re "1") (re.range "0" "2"))) (str.to_re "/") (re.union (re.++ (re.range "0" "2") (re.range "0" "9")) (re.++ (str.to_re "3") (re.range "0" "1"))) (str.to_re "/") (re.union (re.++ (str.to_re "2") (re.union (str.to_re "0") (str.to_re "1"))) (re.++ (str.to_re "1") (re.range "6" "9"))) ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (re.++ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) (re.union (re.++ (re.range "0" "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "3"))) ((_ re.loop 1 2) (re.++ (str.to_re ":") (re.range "0" "5") (re.range "0" "9"))))) (str.to_re "\u{0a}")))))
; (http://)?(www\.)?(youtube|yimg|youtu)\.([A-Za-z]{2,4}|[A-Za-z]{2}\.[A-Za-z]{2})/(watch\?v=)?[A-Za-z0-9\-_]{6,12}(&[A-Za-z0-9\-_]{1,}=[A-Za-z0-9\-_]{1,})*
(assert (not (str.in_re X (re.++ (re.opt (str.to_re "http://")) (re.opt (str.to_re "www.")) (str.to_re ".") (re.union ((_ re.loop 2 4) (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.++ ((_ re.loop 2 2) (re.union (re.range "A" "Z") (re.range "a" "z"))) (str.to_re ".") ((_ re.loop 2 2) (re.union (re.range "A" "Z") (re.range "a" "z"))))) (str.to_re "/") (re.opt (str.to_re "watch?v=")) ((_ re.loop 6 12) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to_re "-") (str.to_re "_"))) (re.* (re.++ (str.to_re "&") (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to_re "-") (str.to_re "_"))) (str.to_re "=") (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to_re "-") (str.to_re "_"))))) (str.to_re "\u{0a}y") (re.union (str.to_re "outube") (str.to_re "img") (str.to_re "outu"))))))
; ^\d{3}\s?\d{3}$
(assert (str.in_re X (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "\u{0a}"))))
(assert (> (str.len X) 10))
(check-sat)
