;test regex ^((0091)|(\+91)|(0))([7-9]{1})([0-9]{9})$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.union (re.union (str.to_re "0091") (re.++ (str.to_re "+") (str.to_re "91"))) (str.to_re "0")) (re.++ ((_ re.loop 1 1) (re.range "7" "9")) ((_ re.loop 9 9) (re.range "0" "9"))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)