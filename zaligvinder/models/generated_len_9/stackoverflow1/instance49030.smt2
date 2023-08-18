;test regex ^666[^0]{3}[1-9]{2}0000$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "666") (re.++ ((_ re.loop 3 3) (re.diff re.allchar (str.to_re "0"))) (re.++ ((_ re.loop 2 2) (re.range "1" "9")) (str.to_re "0000"))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)