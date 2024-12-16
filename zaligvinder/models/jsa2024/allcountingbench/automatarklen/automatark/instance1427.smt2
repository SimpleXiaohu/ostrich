(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; /\?java\=[0-9]{2,6}$/U
(assert (str.in_re X (re.++ (str.to_re "/?java=") ((_ re.loop 2 6) (re.range "0" "9")) (str.to_re "/U\u{0a}"))))
; MyPostsearch\u{2e}conduit\u{2e}comUser-Agent\x3AAcmeSubject\x3Aready\.\r\n
(assert (not (str.in_re X (str.to_re "MyPostsearch.conduit.comUser-Agent:AcmeSubject:ready.\u{0d}\u{0a}\u{0a}"))))
; (([\w]+:)?//)?(([\d\w]|%[a-fA-f\d]{2,2})+(:([\d\w]|%[a-fA-f\d]{2,2})+)?@)?([\d\w][-\d\w]{0,253}[\d\w]\.)+[\w]{2,4}(:[\d]+)?(/([-+_~.\d\w]|%[a-fA-f\d]{2,2})*)*(\?(&?([-+_~.\d\w]|%[a-fA-f\d]{2,2})=?)*)?(#([-+_~.\d\w]|%[a-fA-f\d]{2,2})*)?
(assert (str.in_re X (re.++ (re.opt (re.++ (re.opt (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re ":"))) (str.to_re "//"))) (re.opt (re.++ (re.+ (re.union (re.++ (str.to_re "%") ((_ re.loop 2 2) (re.union (re.range "a" "f") (re.range "A" "f") (re.range "0" "9")))) (re.range "0" "9") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.opt (re.++ (str.to_re ":") (re.+ (re.union (re.++ (str.to_re "%") ((_ re.loop 2 2) (re.union (re.range "a" "f") (re.range "A" "f") (re.range "0" "9")))) (re.range "0" "9") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))))) (str.to_re "@"))) (re.+ (re.++ (re.union (re.range "0" "9") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")) ((_ re.loop 0 253) (re.union (str.to_re "-") (re.range "0" "9") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.union (re.range "0" "9") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")) (str.to_re "."))) ((_ re.loop 2 4) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.opt (re.++ (str.to_re ":") (re.+ (re.range "0" "9")))) (re.* (re.++ (str.to_re "/") (re.* (re.union (re.++ (str.to_re "%") ((_ re.loop 2 2) (re.union (re.range "a" "f") (re.range "A" "f") (re.range "0" "9")))) (str.to_re "-") (str.to_re "+") (str.to_re "_") (str.to_re "~") (str.to_re ".") (re.range "0" "9") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))))) (re.opt (re.++ (str.to_re "?") (re.* (re.++ (re.opt (str.to_re "&")) (re.union (re.++ (str.to_re "%") ((_ re.loop 2 2) (re.union (re.range "a" "f") (re.range "A" "f") (re.range "0" "9")))) (str.to_re "-") (str.to_re "+") (str.to_re "_") (str.to_re "~") (str.to_re ".") (re.range "0" "9") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")) (re.opt (str.to_re "=")))))) (re.opt (re.++ (str.to_re "#") (re.* (re.union (re.++ (str.to_re "%") ((_ re.loop 2 2) (re.union (re.range "a" "f") (re.range "A" "f") (re.range "0" "9")))) (str.to_re "-") (str.to_re "+") (str.to_re "_") (str.to_re "~") (str.to_re ".") (re.range "0" "9") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))))) (str.to_re "\u{0a}"))))
(assert (> (str.len X) 10))
(check-sat)