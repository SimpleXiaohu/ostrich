(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ^\$?(\d{1,3}(\,\d{3})*|(\d+))(\.\d{0,2})?$
(assert (str.in_re X (re.++ (re.opt (str.to_re "$")) (re.union (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.* (re.++ (str.to_re ",") ((_ re.loop 3 3) (re.range "0" "9"))))) (re.+ (re.range "0" "9"))) (re.opt (re.++ (str.to_re ".") ((_ re.loop 0 2) (re.range "0" "9")))) (str.to_re "\u{0a}"))))
; /\u{2e}aom([\?\u{5c}\u{2f}]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.aom") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{0a}")))))
(assert (> (str.len X) 10))
(check-sat)
