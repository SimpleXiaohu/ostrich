;test regex ^{6}[a-z]{2}[0-9a-z]{2}([0-9a-z]{3})?\z
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 6 6) (str.to_re "")) (re.++ ((_ re.loop 2 2) (re.range "a" "z")) (re.++ ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "a" "z"))) (re.++ (re.opt ((_ re.loop 3 3) (re.union (re.range "0" "9") (re.range "a" "z")))) (str.to_re "z")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)