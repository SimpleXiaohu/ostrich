;test regex ^(01|02|03|07|08){1}[0-9]{8,10}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ ((_ re.loop 1 1) (re.union (re.union (re.union (re.union (str.to_re "01") (str.to_re "02")) (str.to_re "03")) (str.to_re "07")) (str.to_re "08"))) ((_ re.loop 8 10) (re.range "0" "9")))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)