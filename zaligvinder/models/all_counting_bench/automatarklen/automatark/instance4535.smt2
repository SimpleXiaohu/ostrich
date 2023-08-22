(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; .*\$AVE|\$ave.*
(assert (str.in_re X (re.union (re.++ (re.* re.allchar) (str.to_re "$AVE")) (re.++ (str.to_re "$ave") (re.* re.allchar) (str.to_re "\u{0a}")))))
; ^\$([0]|([1-9]\d{1,2})|([1-9]\d{0,1},\d{3,3})|([1-9]\d{2,2},\d{3,3})|([1-9],\d{3,3},\d{3,3}))([.]\d{1,2})?$|^\(\$([0]|([1-9]\d{1,2})|([1-9]\d{0,1},\d{3,3})|([1-9]\d{2,2},\d{3,3})|([1-9],\d{3,3},\d{3,3}))([.]\d{1,2})?\)$|^(\$)?(-)?([0]|([1-9]\d{0,6}))([.]\d{1,2})?$
(assert (not (str.in_re X (re.union (re.++ (str.to_re "$") (re.union (str.to_re "0") (re.++ (re.range "1" "9") ((_ re.loop 1 2) (re.range "0" "9"))) (re.++ (re.range "1" "9") (re.opt (re.range "0" "9")) (str.to_re ",") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (re.range "1" "9") ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re ",") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (re.range "1" "9") (str.to_re ",") ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re ",") ((_ re.loop 3 3) (re.range "0" "9")))) (re.opt (re.++ (str.to_re ".") ((_ re.loop 1 2) (re.range "0" "9"))))) (re.++ (str.to_re "($") (re.union (str.to_re "0") (re.++ (re.range "1" "9") ((_ re.loop 1 2) (re.range "0" "9"))) (re.++ (re.range "1" "9") (re.opt (re.range "0" "9")) (str.to_re ",") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (re.range "1" "9") ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re ",") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (re.range "1" "9") (str.to_re ",") ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re ",") ((_ re.loop 3 3) (re.range "0" "9")))) (re.opt (re.++ (str.to_re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (str.to_re ")")) (re.++ (re.opt (str.to_re "$")) (re.opt (str.to_re "-")) (re.union (str.to_re "0") (re.++ (re.range "1" "9") ((_ re.loop 0 6) (re.range "0" "9")))) (re.opt (re.++ (str.to_re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (str.to_re "\u{0a}"))))))
; dat\s+resultsmaster\x2Ecom.*Host\u{3a}.*SpyAgentRootHost\x3AAdToolsSubject\x3Ae2give\.com
(assert (not (str.in_re X (re.++ (str.to_re "dat") (re.+ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "resultsmaster.com\u{13}") (re.* re.allchar) (str.to_re "Host:") (re.* re.allchar) (str.to_re "SpyAgentRootHost:AdToolsSubject:e2give.com\u{0a}")))))
; Monitor\s+Supervisor\s+User-Agent\x3A
(assert (str.in_re X (re.++ (str.to_re "Monitor") (re.+ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "Supervisor") (re.+ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "User-Agent:\u{0a}"))))
; /filename=[^\n]*\u{2e}p2g/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{0a}"))) (str.to_re ".p2g/i\u{0a}")))))
(assert (> (str.len X) 10))
(check-sat)
