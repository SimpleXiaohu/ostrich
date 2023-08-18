(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; /filename=\u{22}\d+\u{22}\r\n/P
(assert (str.in_re X (re.++ (str.to_re "/filename=\u{22}") (re.+ (re.range "0" "9")) (str.to_re "\u{22}\u{0d}\u{0a}/P\u{0a}"))))
; ^([A-Z]{0,3})?[ ]?([0-9]{1,3},([0-9]{3},)*[0-9]{3}|[0-9]+)(.[0-9][0-9])?$
(assert (not (str.in_re X (re.++ (re.opt ((_ re.loop 0 3) (re.range "A" "Z"))) (re.opt (str.to_re " ")) (re.union (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re ",") (re.* (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re ","))) ((_ re.loop 3 3) (re.range "0" "9"))) (re.+ (re.range "0" "9"))) (re.opt (re.++ re.allchar (re.range "0" "9") (re.range "0" "9"))) (str.to_re "\u{0a}")))))
(assert (> (str.len X) 9))
(check-sat)
