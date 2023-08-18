;test regex ^(?:0[0-9]|1[0-3])-(?:ARID|arid)-[0-9]{3}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.union (re.++ (str.to_re "0") (re.range "0" "9")) (re.++ (str.to_re "1") (re.range "0" "3"))) (re.++ (str.to_re "-") (re.++ (re.union (re.++ (str.to_re "A") (re.++ (str.to_re "R") (re.++ (str.to_re "I") (str.to_re "D")))) (re.++ (str.to_re "a") (re.++ (str.to_re "r") (re.++ (str.to_re "i") (str.to_re "d"))))) (re.++ (str.to_re "-") ((_ re.loop 3 3) (re.range "0" "9"))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)