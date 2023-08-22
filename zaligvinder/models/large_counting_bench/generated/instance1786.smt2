;test regex [0-9A-Za-z-]{0,62}
(declare-const X String)
(assert (str.in_re X ((_ re.loop 0 62) (re.union (re.range "0" "9") (re.union (re.range "A" "Z") (re.union (re.range "a" "z") (str.to_re "-")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 200 (str.len X)))
(check-sat)
(get-model)