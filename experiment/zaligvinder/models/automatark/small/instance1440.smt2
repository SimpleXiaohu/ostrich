(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ^((\+|00)[1-9]{1,3})?(\-| {0,1})?(([\d]{0,3})(\-| {0,1})?([\d]{5,11})){1}$
(assert (not (str.in_re X (re.++ (re.opt (re.++ (re.union (str.to_re "+") (str.to_re "00")) ((_ re.loop 1 3) (re.range "1" "9")))) (re.opt (re.union (str.to_re "-") (re.opt (str.to_re " ")))) ((_ re.loop 1 1) (re.++ ((_ re.loop 0 3) (re.range "0" "9")) (re.opt (re.union (str.to_re "-") (re.opt (str.to_re " ")))) ((_ re.loop 5 11) (re.range "0" "9")))) (str.to_re "\u{0a}")))))
; /\u{2e}jfif?([\?\u{5c}\u{2f}]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.jfi") (re.opt (str.to_re "f")) (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{0a}")))))
; upgrade\x2Eqsrch\x2Einfox2Fie\.aspdcww\x2Edmcast\x2Ecom
(assert (not (str.in_re X (str.to_re "upgrade.qsrch.infox2Fie.aspdcww.dmcast.com\u{0a}"))))
(check-sat)