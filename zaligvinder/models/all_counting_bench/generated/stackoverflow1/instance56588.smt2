;test regex ([a-z]{29}|[a-z]{3}|[a-z]{3})
(declare-const X String)
(assert (str.in_re X (re.union (re.union ((_ re.loop 29 29) (re.range "a" "z")) ((_ re.loop 3 3) (re.range "a" "z"))) ((_ re.loop 3 3) (re.range "a" "z")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)