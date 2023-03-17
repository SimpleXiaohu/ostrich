;test regex [A-Z]{1}[A-Z]{0,7}
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 1 1) (re.range "A" "Z")) ((_ re.loop 0 7) (re.range "A" "Z")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)