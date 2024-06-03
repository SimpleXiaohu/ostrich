;test regex ^(00\d{4}|01\d{4}|200\d{5})$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.union (re.union (re.++ (str.to_re "00") ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (str.to_re "01") ((_ re.loop 4 4) (re.range "0" "9")))) (re.++ (str.to_re "200") ((_ re.loop 5 5) (re.range "0" "9"))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)