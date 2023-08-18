;test regex ^((02|03|04|06|07|09){1}([0-9]{7}))$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ ((_ re.loop 1 1) (re.union (re.union (re.union (re.union (re.union (str.to_re "02") (str.to_re "03")) (str.to_re "04")) (str.to_re "06")) (str.to_re "07")) (str.to_re "09"))) ((_ re.loop 7 7) (re.range "0" "9")))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)