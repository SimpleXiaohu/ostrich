;test regex [0-9a-zA-Z][0-9a-zA-Z\d]{3,498}[0-9a-zA-Z]
(declare-const X String)
(assert (str.in_re X (re.++ (re.union (re.range "0" "9") (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.++ ((_ re.loop 3 498) (re.union (re.range "0" "9") (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.range "0" "9"))))) (re.union (re.range "0" "9") (re.union (re.range "a" "z") (re.range "A" "Z")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 200 (str.len X)))
(check-sat)
(get-model)