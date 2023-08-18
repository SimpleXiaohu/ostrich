;test regex ^[A-Z\d]{8}[\dX][A-Z\d]{2}\d{6}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ ((_ re.loop 8 8) (re.union (re.range "A" "Z") (re.range "0" "9"))) (re.++ (re.union (re.range "0" "9") (str.to_re "X")) (re.++ ((_ re.loop 2 2) (re.union (re.range "A" "Z") (re.range "0" "9"))) ((_ re.loop 6 6) (re.range "0" "9")))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)