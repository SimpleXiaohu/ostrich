;test regex ^(([1..9])|(0[1..9])|(1\d)|(2\d)|(3[0..1])).((\d)|(0\d)|(1[0..2])).(\d{4})$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.union (re.union (re.union (re.union (re.union (str.to_re "1") (re.union (str.to_re ".") (re.union (str.to_re ".") (str.to_re "9")))) (re.++ (str.to_re "0") (re.union (str.to_re "1") (re.union (str.to_re ".") (re.union (str.to_re ".") (str.to_re "9")))))) (re.++ (str.to_re "1") (re.range "0" "9"))) (re.++ (str.to_re "2") (re.range "0" "9"))) (re.++ (str.to_re "3") (re.union (str.to_re "0") (re.union (str.to_re ".") (re.union (str.to_re ".") (str.to_re "1")))))) (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (re.union (re.union (re.range "0" "9") (re.++ (str.to_re "0") (re.range "0" "9"))) (re.++ (str.to_re "1") (re.union (str.to_re "0") (re.union (str.to_re ".") (re.union (str.to_re ".") (str.to_re "2")))))) (re.++ (re.diff re.allchar (str.to_re "\n")) ((_ re.loop 4 4) (re.range "0" "9"))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)