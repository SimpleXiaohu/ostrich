;test regex ([a-z]{3})([0-9a-z]{2})
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 3 3) (re.range "a" "z")) ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "a" "z"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)