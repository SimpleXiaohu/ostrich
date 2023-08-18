;test regex ^[A-Z]{3}-[0-9]{4}-[ABCD]$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ ((_ re.loop 3 3) (re.range "A" "Z")) (re.++ (str.to_re "-") (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ (str.to_re "-") (re.union (str.to_re "A") (re.union (str.to_re "B") (re.union (str.to_re "C") (str.to_re "D"))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)