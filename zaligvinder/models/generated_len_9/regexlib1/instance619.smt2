;test regex ^(?:(([+]|00)92)|0)((3[0-6][0-9]))(\d{7})$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.union (re.++ (re.union (str.to_re "+") (str.to_re "00")) (str.to_re "92")) (str.to_re "0")) (re.++ (re.++ (str.to_re "3") (re.++ (re.range "0" "6") (re.range "0" "9"))) ((_ re.loop 7 7) (re.range "0" "9"))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)