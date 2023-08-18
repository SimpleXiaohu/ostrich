;test regex ^ISBN:(\d{12}(?:\d|X))$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "I") (re.++ (str.to_re "S") (re.++ (str.to_re "B") (re.++ (str.to_re "N") (re.++ (str.to_re ":") (re.++ ((_ re.loop 12 12) (re.range "0" "9")) (re.union (re.range "0" "9") (str.to_re "X"))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)