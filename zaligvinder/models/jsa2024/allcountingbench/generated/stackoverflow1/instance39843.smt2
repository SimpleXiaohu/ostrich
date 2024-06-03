;test regex ([1-2]\d{2}|\d{2}|[1-9]|300)
(declare-const X String)
(assert (str.in_re X (re.union (re.union (re.union (re.++ (re.range "1" "2") ((_ re.loop 2 2) (re.range "0" "9"))) ((_ re.loop 2 2) (re.range "0" "9"))) (re.range "1" "9")) (str.to_re "300"))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)