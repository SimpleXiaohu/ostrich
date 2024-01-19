(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; www\x2Erichfind\x2EcomHost\x3A
(assert (str.in_re X (str.to_re "www.richfind.comHost:\u{0a}")))
; ^(\-)?1000([.][0]{1,3})?$|^(\-)?\d{1,3}$|^(\-)?\d{1,3}([.]\d{1,3})$|^(\-)?([.]\d{1,3})$
(assert (str.in_re X (re.union (re.++ (re.opt (str.to_re "-")) (str.to_re "1000") (re.opt (re.++ (str.to_re ".") ((_ re.loop 1 3) (str.to_re "0"))))) (re.++ (re.opt (str.to_re "-")) ((_ re.loop 1 3) (re.range "0" "9"))) (re.++ (re.opt (str.to_re "-")) ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re ".") ((_ re.loop 1 3) (re.range "0" "9"))) (re.++ (re.opt (str.to_re "-")) (str.to_re "\u{0a}.") ((_ re.loop 1 3) (re.range "0" "9"))))))
(assert (> (str.len X) 10))
(check-sat)
