;test regex (00447|\+?447|07)([0-9]{9})
(declare-const X String)
(assert (str.in_re X (re.++ (re.union (re.union (str.to_re "00447") (re.++ (re.opt (str.to_re "+")) (str.to_re "447"))) (str.to_re "07")) ((_ re.loop 9 9) (re.range "0" "9")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)