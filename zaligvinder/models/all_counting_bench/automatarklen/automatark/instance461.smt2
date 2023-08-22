(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ^[a-zA-Z\d]+(([\'\,\.\- #][a-zA-Z\d ])?[a-zA-Z\d]*[\.]*)*$
(assert (not (str.in_re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (re.* (re.++ (re.opt (re.++ (re.union (str.to_re "'") (str.to_re ",") (str.to_re ".") (str.to_re "-") (str.to_re " ") (str.to_re "#")) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re " ")))) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (re.* (str.to_re ".")))) (str.to_re "\u{0a}")))))
; ^(((0?[1-9]|1\d|2[0-8])|(0?[13456789]|1[012])/(29|30)|(0?[13578]|1[02])/31)/(0?[1-9]|1[012])/(19|[2-9]\d)\d{2}|0?29/0?2/((19|[2-9]\d)(0[48]|[2468][048]|[13579][26])|(([2468][048]|[3579][26])00)))$
(assert (str.in_re X (re.++ (re.union (re.++ (re.union (re.++ (re.union (re.++ (re.opt (str.to_re "0")) (re.union (str.to_re "1") (str.to_re "3") (str.to_re "4") (str.to_re "5") (str.to_re "6") (str.to_re "7") (str.to_re "8") (str.to_re "9"))) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2")))) (str.to_re "/") (re.union (str.to_re "29") (str.to_re "30"))) (re.++ (re.union (re.++ (re.opt (str.to_re "0")) (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "8"))) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "2")))) (str.to_re "/31")) (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "8"))) (str.to_re "/") (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2")))) (str.to_re "/") (re.union (str.to_re "19") (re.++ (re.range "2" "9") (re.range "0" "9"))) ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (re.opt (str.to_re "0")) (str.to_re "29/") (re.opt (str.to_re "0")) (str.to_re "2/") (re.union (re.++ (re.union (str.to_re "19") (re.++ (re.range "2" "9") (re.range "0" "9"))) (re.union (re.++ (str.to_re "0") (re.union (str.to_re "4") (str.to_re "8"))) (re.++ (re.union (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "9")) (re.union (str.to_re "2") (str.to_re "6"))))) (re.++ (re.union (re.++ (re.union (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (re.union (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "9")) (re.union (str.to_re "2") (str.to_re "6")))) (str.to_re "00"))))) (str.to_re "\u{0a}"))))
; /\/[a-z0-9]{12}\.txt$/U
(assert (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 12 12) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re ".txt/U\u{0a}"))))
; ^(user=([a-z0-9]+,)*(([a-z0-9]+){1});)?(group=([a-z0-9]+,)*(([a-z0-9]+){1});)?(level=[0-9]+;)?$
(assert (not (str.in_re X (re.++ (re.opt (re.++ (str.to_re "user=") (re.* (re.++ (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re ","))) ((_ re.loop 1 1) (re.+ (re.union (re.range "a" "z") (re.range "0" "9")))) (str.to_re ";"))) (re.opt (re.++ (str.to_re "group=") (re.* (re.++ (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re ","))) ((_ re.loop 1 1) (re.+ (re.union (re.range "a" "z") (re.range "0" "9")))) (str.to_re ";"))) (re.opt (re.++ (str.to_re "level=") (re.+ (re.range "0" "9")) (str.to_re ";"))) (str.to_re "\u{0a}")))))
(assert (> (str.len X) 10))
(check-sat)
