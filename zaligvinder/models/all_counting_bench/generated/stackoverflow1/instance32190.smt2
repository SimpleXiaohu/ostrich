;test regex a{2}babab
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 2 2) (str.to_re "a")) (re.++ (str.to_re "b") (re.++ (str.to_re "a") (re.++ (str.to_re "b") (re.++ (str.to_re "a") (str.to_re "b"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)