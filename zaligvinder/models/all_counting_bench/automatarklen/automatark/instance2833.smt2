(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; (\s(\bon[a-zA-Z][a-z]+)\s?\=\s?[\'\"]?(javascript\:)?[\w\(\),\' ]*;?[\'\"]?)+
(assert (not (str.in_re X (re.++ (re.+ (re.++ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "=") (re.opt (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.opt (re.union (str.to_re "'") (str.to_re "\u{22}"))) (re.opt (str.to_re "javascript:")) (re.* (re.union (str.to_re "(") (str.to_re ")") (str.to_re ",") (str.to_re "'") (str.to_re " ") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.opt (str.to_re ";")) (re.opt (re.union (str.to_re "'") (str.to_re "\u{22}"))) (str.to_re "on") (re.union (re.range "a" "z") (re.range "A" "Z")) (re.+ (re.range "a" "z")))) (str.to_re "\u{0a}")))))
; ^[0-9]*[a-zA-Z]([-.\w]*[0-9a-zA-Z])*@([a-zA-Z][-\w\.]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,9}$
(assert (str.in_re X (re.++ (re.* (re.range "0" "9")) (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* (re.++ (re.* (re.union (str.to_re "-") (str.to_re ".") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z")))) (str.to_re "@") (re.+ (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* (re.union (str.to_re "-") (str.to_re ".") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z")) (str.to_re "."))) ((_ re.loop 2 9) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to_re "\u{0a}"))))
; are\d+Version\d+JMailBoxHostGENERAL_PARAM2
(assert (not (str.in_re X (re.++ (str.to_re "are") (re.+ (re.range "0" "9")) (str.to_re "Version") (re.+ (re.range "0" "9")) (str.to_re "JMailBoxHostGENERAL_PARAM2\u{0a}")))))
(assert (> (str.len X) 10))
(check-sat)
