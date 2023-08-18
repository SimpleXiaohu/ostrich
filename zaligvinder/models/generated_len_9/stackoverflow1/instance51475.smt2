;test regex [A-z]{3}def[0-9]{9}
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 3 3) (re.range "A" "z")) (re.++ (str.to_re "d") (re.++ (str.to_re "e") (re.++ (str.to_re "f") ((_ re.loop 9 9) (re.range "0" "9"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)