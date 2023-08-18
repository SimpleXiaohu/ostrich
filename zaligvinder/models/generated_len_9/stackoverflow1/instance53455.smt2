;test regex ^(\D{3})(\D{0,4})(OFF|SALE)\d{4}(\1)$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ ((_ re.loop 3 3) (re.diff re.allchar (re.range "0" "9"))) (re.++ ((_ re.loop 0 4) (re.diff re.allchar (re.range "0" "9"))) (re.++ (re.union (re.++ (str.to_re "O") (re.++ (str.to_re "F") (str.to_re "F"))) (re.++ (str.to_re "S") (re.++ (str.to_re "A") (re.++ (str.to_re "L") (str.to_re "E"))))) (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (_ re.reference 1)))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)