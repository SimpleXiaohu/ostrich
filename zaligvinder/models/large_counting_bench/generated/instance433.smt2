;test regex (x|y|z){1,4000}
(declare-const X String)
(assert (str.in_re X ((_ re.loop 1 4000) (re.union (re.union (str.to_re "x") (str.to_re "y")) (str.to_re "z")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 200 (str.len X)))
(check-sat)
(get-model)