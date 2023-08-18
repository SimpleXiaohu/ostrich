(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ^[1-9]{1}[0-9]{0,2}([\.\,]?[0-9]{3})*$
(assert (not (str.in_re X (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 0 2) (re.range "0" "9")) (re.* (re.++ (re.opt (re.union (str.to_re ".") (str.to_re ","))) ((_ re.loop 3 3) (re.range "0" "9")))) (str.to_re "\u{0a}")))))
; User-Agent\u{3a}[^\n\r]*Echelon.*Blacksnprtz\x7CdialnoSearch
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.* (re.union (str.to_re "\u{0a}") (str.to_re "\u{0d}"))) (str.to_re "Echelon") (re.* re.allchar) (str.to_re "Blacksnprtz|dialnoSearch\u{0a}"))))
(assert (> (str.len X) 9))
(check-sat)
