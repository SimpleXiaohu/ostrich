;test regex (001|010|011|100|1{3})
(declare-const X String)
(assert (str.in_re X (re.union (re.union (re.union (re.union (str.to_re "001") (str.to_re "010")) (str.to_re "011")) (str.to_re "100")) ((_ re.loop 3 3) (str.to_re "1")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)