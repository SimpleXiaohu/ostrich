;test regex ([0-7][0-7][8-9]{2})
(declare-const X String)
(assert (str.in_re X (re.++ (re.range "0" "7") (re.++ (re.range "0" "7") ((_ re.loop 2 2) (re.range "8" "9"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)