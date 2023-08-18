;test regex 201210(\d{5,5})Test
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "201210") (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (re.++ (str.to_re "T") (re.++ (str.to_re "e") (re.++ (str.to_re "s") (str.to_re "t"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)