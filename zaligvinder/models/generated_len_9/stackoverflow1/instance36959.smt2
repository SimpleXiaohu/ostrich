;test regex ^[1-9][0-9]{8}[VvXx]$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.range "1" "9") (re.++ ((_ re.loop 8 8) (re.range "0" "9")) (re.union (str.to_re "V") (re.union (str.to_re "v") (re.union (str.to_re "X") (str.to_re "x"))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)