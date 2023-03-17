;test regex f[a-z]{2}e
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "f") (re.++ ((_ re.loop 2 2) (re.range "a" "z")) (str.to_re "e")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)