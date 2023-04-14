;test regex ((\+31|0)2([0-9]{2}|0)+)+
(declare-const X String)
(assert (str.in_re X (re.+ (re.++ (re.union (re.++ (str.to_re "+") (str.to_re "31")) (str.to_re "0")) (re.++ (str.to_re "2") (re.+ (re.union ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "0"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)