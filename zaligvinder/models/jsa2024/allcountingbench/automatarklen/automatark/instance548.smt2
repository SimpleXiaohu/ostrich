(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ^(Sun|Mon|(T(ues|hurs))|Fri)(day|\.)?$|Wed(\.|nesday)?$|Sat(\.|urday)?$|T((ue?)|(hu?r?))\.?$
(assert (str.in_re X (re.union (re.++ (re.union (str.to_re "Sun") (str.to_re "Mon") (re.++ (str.to_re "T") (re.union (str.to_re "ues") (str.to_re "hurs"))) (str.to_re "Fri")) (re.opt (re.union (str.to_re "day") (str.to_re ".")))) (re.++ (str.to_re "Wed") (re.opt (re.union (str.to_re ".") (str.to_re "nesday")))) (re.++ (str.to_re "Sat") (re.opt (re.union (str.to_re ".") (str.to_re "urday")))) (re.++ (str.to_re "T") (re.union (re.++ (str.to_re "u") (re.opt (str.to_re "e"))) (re.++ (str.to_re "h") (re.opt (str.to_re "u")) (re.opt (str.to_re "r")))) (re.opt (str.to_re ".")) (str.to_re "\u{0a}")))))
; /^\u{2f}\u{3f}ptrxcz\u{5f}[a-zA-Z0-9]{30}$/Ui
(assert (not (str.in_re X (re.++ (str.to_re "//?ptrxcz_") ((_ re.loop 30 30) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "/Ui\u{0a}")))))
; (([0-2]{1}[0-9]{1})|([3-3]{1}[0-1]))/[1-12]{2}/[1900-2999]{4}\s(([0-0]{1}[0-9]{1})|([1-1]{1}[0-9]{1})|([2-2]{1}[0-3]{1})):[0-5]{1}[0-9]{1}:[0-5]{1}[0-9]{1}
(assert (not (str.in_re X (re.++ (re.union (re.++ ((_ re.loop 1 1) (re.range "0" "2")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (re.range "3" "3")) (re.range "0" "1"))) (str.to_re "/") ((_ re.loop 2 2) (re.union (re.range "1" "1") (str.to_re "2"))) (str.to_re "/") ((_ re.loop 4 4) (re.union (str.to_re "1") (str.to_re "9") (str.to_re "0") (re.range "0" "2"))) (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) (re.union (re.++ ((_ re.loop 1 1) (re.range "0" "0")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (re.range "1" "1")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (re.range "2" "2")) ((_ re.loop 1 1) (re.range "0" "3")))) (str.to_re ":") ((_ re.loop 1 1) (re.range "0" "5")) ((_ re.loop 1 1) (re.range "0" "9")) (str.to_re ":") ((_ re.loop 1 1) (re.range "0" "5")) ((_ re.loop 1 1) (re.range "0" "9")) (str.to_re "\u{0a}")))))
(assert (> (str.len X) 10))
(check-sat)
