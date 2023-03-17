;test regex ^([L|U]{1})([0-9]{5})([A-Za-z]{2})([0-9]{4})([A-Za-z]{3})([0-9]{6})$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ ((_ re.loop 1 1) (re.union (str.to_re "L") (re.union (str.to_re "|") (str.to_re "U")))) (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (re.++ ((_ re.loop 2 2) (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ ((_ re.loop 3 3) (re.union (re.range "A" "Z") (re.range "a" "z"))) ((_ re.loop 6 6) (re.range "0" "9")))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)