;test regex ^(?:Foo){0}bar
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "") (re.++ ((_ re.loop 0 0) (re.++ (str.to_re "F") (re.++ (str.to_re "o") (str.to_re "o")))) (re.++ (str.to_re "b") (re.++ (str.to_re "a") (str.to_re "r")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)