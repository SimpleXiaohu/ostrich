;test regex ([A-Za-z]{2}|[A-Za-z]\d|\d[A-Za-z])[A-Za-z]{0,1}\d(\d{0,3})[A-Za-z]{0,1}
(declare-const X String)
(assert (str.in_re X (re.++ (re.union (re.union ((_ re.loop 2 2) (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.++ (re.union (re.range "A" "Z") (re.range "a" "z")) (re.range "0" "9"))) (re.++ (re.range "0" "9") (re.union (re.range "A" "Z") (re.range "a" "z")))) (re.++ ((_ re.loop 0 1) (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.++ (re.range "0" "9") (re.++ ((_ re.loop 0 3) (re.range "0" "9")) ((_ re.loop 0 1) (re.union (re.range "A" "Z") (re.range "a" "z")))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)