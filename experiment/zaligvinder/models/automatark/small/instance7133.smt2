(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; /[^/]+$
(assert (not (str.in_re X (re.++ (str.to_re "/") (re.+ (re.comp (str.to_re "/"))) (str.to_re "\u{0a}")))))
; (^\d{5}-\d{3}|^\d{2}.\d{3}-\d{3}|\d{8})
(assert (not (str.in_re X (re.++ (re.union (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) re.allchar ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 3 3) (re.range "0" "9"))) ((_ re.loop 8 8) (re.range "0" "9"))) (str.to_re "\u{0a}")))))
(check-sat)