;test regex 123(abc{2,5}?)abc
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "123") (re.++ (re.++ (str.to_re "a") (re.++ (str.to_re "b") ((_ re.loop? 2 5) (str.to_re "c")))) (re.++ (str.to_re "a") (re.++ (str.to_re "b") (str.to_re "c")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)