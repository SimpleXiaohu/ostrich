(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ^((\d{2,4})/)?((\d{6,8})|(\d{2})-(\d{2})-(\d{2,4})|(\d{3,4})-(\d{3,4}))$
(assert (not (str.in_re X (re.++ (re.opt (re.++ ((_ re.loop 2 4) (re.range "0" "9")) (str.to_re "/"))) (re.union ((_ re.loop 6 8) (re.range "0" "9")) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 2 4) (re.range "0" "9"))) (re.++ ((_ re.loop 3 4) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 3 4) (re.range "0" "9")))) (str.to_re "\u{0a}")))))
; ^\d{4,}$|^[3-9]\d{2}$|^2[5-9]\d$
(assert (not (str.in_re X (re.union (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.* (re.range "0" "9"))) (re.++ (re.range "3" "9") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to_re "2") (re.range "5" "9") (re.range "0" "9") (str.to_re "\u{0a}"))))))
; ^((25[0-4]|(2[0-4]|1[0-9]|[1-9]?)[0-9]\.){3}(25[0-4]|(2[0-4]|1[0-9]|[1-9]?)[0-9]))$
(assert (not (str.in_re X (re.++ (str.to_re "\u{0a}") ((_ re.loop 3 3) (re.union (re.++ (str.to_re "25") (re.range "0" "4")) (re.++ (re.union (re.++ (str.to_re "2") (re.range "0" "4")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.opt (re.range "1" "9"))) (re.range "0" "9") (str.to_re ".")))) (re.union (re.++ (str.to_re "25") (re.range "0" "4")) (re.++ (re.union (re.++ (str.to_re "2") (re.range "0" "4")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.opt (re.range "1" "9"))) (re.range "0" "9")))))))
; ^\w*[-]*\w*\\\w*$
(assert (not (str.in_re X (re.++ (re.* (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.* (str.to_re "-")) (re.* (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "\u{5c}") (re.* (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "\u{0a}")))))
; ^(((\+?64\s*[-\.]?[3-9]|\(?0[3-9]\)?)\s*[-\.]?\d{3}\s*[-\.]?\d{4})|((\+?64\s*[-\.\(]?2\d{1}[-\.\)]?|\(?02\d{1}\)?)\s*[-\.]?\d{3}\s*[-\.]?\d{3,5})|((\+?64\s*[-\.]?[-\.\(]?800[-\.\)]?|[-\.\(]?0800[-\.\)]?)\s*[-\.]?\d{3}\s*[-\.]?(\d{2}|\d{5})))$
(assert (str.in_re X (re.++ (re.union (re.++ (re.union (re.++ (re.opt (str.to_re "+")) (str.to_re "64") (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.opt (re.union (str.to_re "-") (str.to_re "."))) (re.range "3" "9")) (re.++ (re.opt (str.to_re "(")) (str.to_re "0") (re.range "3" "9") (re.opt (str.to_re ")")))) (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.opt (re.union (str.to_re "-") (str.to_re "."))) ((_ re.loop 3 3) (re.range "0" "9")) (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.opt (re.union (str.to_re "-") (str.to_re "."))) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (re.union (re.++ (re.opt (str.to_re "+")) (str.to_re "64") (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.opt (re.union (str.to_re "-") (str.to_re ".") (str.to_re "("))) (str.to_re "2") ((_ re.loop 1 1) (re.range "0" "9")) (re.opt (re.union (str.to_re "-") (str.to_re ".") (str.to_re ")")))) (re.++ (re.opt (str.to_re "(")) (str.to_re "02") ((_ re.loop 1 1) (re.range "0" "9")) (re.opt (str.to_re ")")))) (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.opt (re.union (str.to_re "-") (str.to_re "."))) ((_ re.loop 3 3) (re.range "0" "9")) (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.opt (re.union (str.to_re "-") (str.to_re "."))) ((_ re.loop 3 5) (re.range "0" "9"))) (re.++ (re.union (re.++ (re.opt (str.to_re "+")) (str.to_re "64") (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.opt (re.union (str.to_re "-") (str.to_re "."))) (re.opt (re.union (str.to_re "-") (str.to_re ".") (str.to_re "("))) (str.to_re "800") (re.opt (re.union (str.to_re "-") (str.to_re ".") (str.to_re ")")))) (re.++ (re.opt (re.union (str.to_re "-") (str.to_re ".") (str.to_re "("))) (str.to_re "0800") (re.opt (re.union (str.to_re "-") (str.to_re ".") (str.to_re ")"))))) (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.opt (re.union (str.to_re "-") (str.to_re "."))) ((_ re.loop 3 3) (re.range "0" "9")) (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.opt (re.union (str.to_re "-") (str.to_re "."))) (re.union ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 5 5) (re.range "0" "9"))))) (str.to_re "\u{0a}"))))
(assert (> (str.len X) 10))
(check-sat)
