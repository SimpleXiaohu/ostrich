;test regex a{3}|b{3}|c{3}
(declare-const X String)
(assert (str.in_re X (re.union (re.union ((_ re.loop 3 3) (str.to_re "a")) ((_ re.loop 3 3) (str.to_re "b"))) ((_ re.loop 3 3) (str.to_re "c")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)