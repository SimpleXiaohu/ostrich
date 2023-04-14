(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; [A-Za-z]{1,2}[\d]{1,2}[A-Za-z]{0,1}
(assert (not (str.in_re X (re.++ ((_ re.loop 1 2) (re.union (re.range "A" "Z") (re.range "a" "z"))) ((_ re.loop 1 2) (re.range "0" "9")) (re.opt (re.union (re.range "A" "Z") (re.range "a" "z"))) (str.to_re "\u{0a}")))))
; [1-2][0|9][0-9]{2}[0-1][0-9][0-3][0-9][-][0-9]{4}
(assert (str.in_re X (re.++ (re.range "1" "2") (re.union (str.to_re "0") (str.to_re "|") (str.to_re "9")) ((_ re.loop 2 2) (re.range "0" "9")) (re.range "0" "1") (re.range "0" "9") (re.range "0" "3") (re.range "0" "9") (str.to_re "-") ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "\u{0a}"))))
; /^[-a-z0-9~!$%^&*_=+}{\'?]+(\.[-a-z0-9~!$%^&*_=+}{\'?]+)*@([a-z0-9_][-a-z0-9_]*(\.[-a-z0-9_]+)*\.(aero|arpa|biz|com|coop|edu|gov|info|int|mil|museum|name|net|org|pro|travel|mobi|[a-z][a-z])|([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}))(:[0-9]{1,5})?$/i
(assert (str.in_re X (re.++ (str.to_re "/") (re.+ (re.union (str.to_re "-") (re.range "a" "z") (re.range "0" "9") (str.to_re "~") (str.to_re "!") (str.to_re "$") (str.to_re "%") (str.to_re "^") (str.to_re "&") (str.to_re "*") (str.to_re "_") (str.to_re "=") (str.to_re "+") (str.to_re "}") (str.to_re "{") (str.to_re "'") (str.to_re "?"))) (re.* (re.++ (str.to_re ".") (re.+ (re.union (str.to_re "-") (re.range "a" "z") (re.range "0" "9") (str.to_re "~") (str.to_re "!") (str.to_re "$") (str.to_re "%") (str.to_re "^") (str.to_re "&") (str.to_re "*") (str.to_re "_") (str.to_re "=") (str.to_re "+") (str.to_re "}") (str.to_re "{") (str.to_re "'") (str.to_re "?"))))) (str.to_re "@") (re.union (re.++ (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "_")) (re.* (re.union (str.to_re "-") (re.range "a" "z") (re.range "0" "9") (str.to_re "_"))) (re.* (re.++ (str.to_re ".") (re.+ (re.union (str.to_re "-") (re.range "a" "z") (re.range "0" "9") (str.to_re "_"))))) (str.to_re ".") (re.union (str.to_re "aero") (str.to_re "arpa") (str.to_re "biz") (str.to_re "com") (str.to_re "coop") (str.to_re "edu") (str.to_re "gov") (str.to_re "info") (str.to_re "int") (str.to_re "mil") (str.to_re "museum") (str.to_re "name") (str.to_re "net") (str.to_re "org") (str.to_re "pro") (str.to_re "travel") (str.to_re "mobi") (re.++ (re.range "a" "z") (re.range "a" "z")))) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re ".") ((_ re.loop 1 3) (re.range "0" "9")))) (re.opt (re.++ (str.to_re ":") ((_ re.loop 1 5) (re.range "0" "9")))) (str.to_re "/i\u{0a}"))))
; /filename=[^\n]*\u{2e}tga/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{0a}"))) (str.to_re ".tga/i\u{0a}")))))
(check-sat)