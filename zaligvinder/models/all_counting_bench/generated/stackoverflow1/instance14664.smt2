;test regex ^(\d{2})([0-4][1-9]|[1-5]0|5[12])(\d{5})$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (re.union (re.union (re.++ (re.range "0" "4") (re.range "1" "9")) (re.++ (re.range "1" "5") (str.to_re "0"))) (re.++ (str.to_re "5") (str.to_re "12"))) ((_ re.loop 5 5) (re.range "0" "9"))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)