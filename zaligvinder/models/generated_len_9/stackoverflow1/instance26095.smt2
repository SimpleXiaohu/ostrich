;test regex ^((015\d{9})|(01[0-46-9]\d{8,9}))$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.union (re.++ (str.to_re "015") ((_ re.loop 9 9) (re.range "0" "9"))) (re.++ (str.to_re "01") (re.++ (re.union (re.range "0" "46") (re.union (str.to_re "-") (str.to_re "9"))) ((_ re.loop 8 9) (re.range "0" "9")))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)