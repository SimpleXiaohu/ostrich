(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ^\(?([0-9]{3})\)?[\s\.\-]*([0-9]{3})[\s\.\-]*([0-9]{4})$
(assert (str.in_re X (re.++ (re.opt (str.to_re "(")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to_re ")")) (re.* (re.union (str.to_re ".") (str.to_re "-") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.* (re.union (str.to_re ".") (str.to_re "-") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "\u{0a}"))))
(assert (> (str.len X) 9))
(check-sat)
