(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; User-Agent\x3AUser-Agent\u{3a}
(assert (str.in_re X (str.to_re "User-Agent:User-Agent:\u{0a}")))
; /^[-+]?[1-9](\d*|((\d{1,2})?,(\d{3},)*(\d{3})))?([eE][-+]\d+)?$/
(assert (not (str.in_re X (re.++ (str.to_re "/") (re.opt (re.union (str.to_re "-") (str.to_re "+"))) (re.range "1" "9") (re.opt (re.union (re.* (re.range "0" "9")) (re.++ (re.opt ((_ re.loop 1 2) (re.range "0" "9"))) (str.to_re ",") (re.* (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re ","))) ((_ re.loop 3 3) (re.range "0" "9"))))) (re.opt (re.++ (re.union (str.to_re "e") (str.to_re "E")) (re.union (str.to_re "-") (str.to_re "+")) (re.+ (re.range "0" "9")))) (str.to_re "/\u{0a}")))))
(assert (> (str.len X) 10))
(check-sat)
