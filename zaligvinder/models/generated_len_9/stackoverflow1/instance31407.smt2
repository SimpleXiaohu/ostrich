;test regex ^(3(?:088|096|112|158|337|5(?:2[89]|[3-8][0-9]))\d{12})$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "3") (re.++ (re.union (re.union (re.union (re.union (re.union (str.to_re "088") (str.to_re "096")) (str.to_re "112")) (str.to_re "158")) (str.to_re "337")) (re.++ (str.to_re "5") (re.union (re.++ (str.to_re "2") (str.to_re "89")) (re.++ (re.range "3" "8") (re.range "0" "9"))))) ((_ re.loop 12 12) (re.range "0" "9"))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)