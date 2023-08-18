;test regex (?:0[1-9]|[13-8][0-9]|2[ab1-9]|9[0-5])(?:[0-9]{3})?|9[78][1-9](?:[0-9]{2})?
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (re.union (re.union (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.range "13" "8") (re.range "0" "9"))) (re.++ (str.to_re "2") (re.union (str.to_re "a") (re.union (str.to_re "b") (re.range "1" "9"))))) (re.++ (str.to_re "9") (re.range "0" "5"))) (re.opt ((_ re.loop 3 3) (re.range "0" "9")))) (re.++ (str.to_re "9") (re.++ (str.to_re "78") (re.++ (re.range "1" "9") (re.opt ((_ re.loop 2 2) (re.range "0" "9")))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)