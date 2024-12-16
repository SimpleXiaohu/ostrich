;test regex ^(0[1-9]|[12][0-9]|3[01])-(0[1-9]|11|12|10)-(19[0-9]{2})$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.union (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "12") (re.range "0" "9"))) (re.++ (str.to_re "3") (str.to_re "01"))) (re.++ (str.to_re "-") (re.++ (re.union (re.union (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (str.to_re "11")) (str.to_re "12")) (str.to_re "10")) (re.++ (str.to_re "-") (re.++ (str.to_re "19") ((_ re.loop 2 2) (re.range "0" "9")))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)