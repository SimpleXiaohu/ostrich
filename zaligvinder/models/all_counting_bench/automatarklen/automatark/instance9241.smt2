(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; (1 )?\d{3} \d{3}-\d{4}
(assert (not (str.in_re X (re.++ (re.opt (str.to_re "1 ")) ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re " ") ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "\u{0a}")))))
; Host\x3A\s+offers\x2Ebullseye-network\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "offers.bullseye-network.com\u{0a}"))))
(assert (> (str.len X) 10))
(check-sat)