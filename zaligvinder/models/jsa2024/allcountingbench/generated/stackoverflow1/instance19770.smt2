;test regex ^((09|\+639)|(|\d{2}|\d{3}))(-|\s)(\d{9}|\d{7})$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.union (re.union (str.to_re "09") (re.++ (str.to_re "+") (str.to_re "639"))) (re.union (str.to_re "") (re.++ (str.to_re "") (re.union ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 3 3) (re.range "0" "9")))))) (re.++ (re.union (str.to_re "-") (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.union ((_ re.loop 9 9) (re.range "0" "9")) ((_ re.loop 7 7) (re.range "0" "9")))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)