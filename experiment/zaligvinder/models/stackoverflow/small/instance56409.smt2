;test regex 5\frac{7}{8}
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "5") (re.++ (str.to_re "\u{0c}") (re.++ (str.to_re "r") (re.++ (str.to_re "a") ((_ re.loop 8 8) ((_ re.loop 7 7) (str.to_re "c")))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)