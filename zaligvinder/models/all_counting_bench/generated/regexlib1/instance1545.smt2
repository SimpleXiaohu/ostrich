;test regex ^\{[A-Fa-f\d]{8}-[A-Fa-f\d]{4}-[A-Fa-f0\d]{4}-[A-Fa-f\d]{4}-[A-Fa-f\d]{12}\}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "{") (re.++ ((_ re.loop 8 8) (re.union (re.range "A" "F") (re.union (re.range "a" "f") (re.range "0" "9")))) (re.++ (str.to_re "-") (re.++ ((_ re.loop 4 4) (re.union (re.range "A" "F") (re.union (re.range "a" "f") (re.range "0" "9")))) (re.++ (str.to_re "-") (re.++ ((_ re.loop 4 4) (re.union (re.range "A" "F") (re.union (re.range "a" "f") (re.union (str.to_re "0") (re.range "0" "9"))))) (re.++ (str.to_re "-") (re.++ ((_ re.loop 4 4) (re.union (re.range "A" "F") (re.union (re.range "a" "f") (re.range "0" "9")))) (re.++ (str.to_re "-") (re.++ ((_ re.loop 12 12) (re.union (re.range "A" "F") (re.union (re.range "a" "f") (re.range "0" "9")))) (str.to_re "}")))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)