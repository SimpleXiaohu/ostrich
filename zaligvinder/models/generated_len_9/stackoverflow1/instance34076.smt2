;test regex ^([A-Za-z])\1([A-Za-z])\2(\d)\3{5}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.union (re.range "A" "Z") (re.range "a" "z")) (re.++ (_ re.reference 1) (re.++ (re.union (re.range "A" "Z") (re.range "a" "z")) (re.++ (_ re.reference 2) (re.++ (re.range "0" "9") ((_ re.loop 5 5) (_ re.reference 3)))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)