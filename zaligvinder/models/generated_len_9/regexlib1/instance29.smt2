;test regex ^[A-Z0-9<]{9}[0-9]{1}[A-Z]{3}[0-9]{7}[A-Z]{1}[0-9]{7}[A-Z0-9<]{14}[0-9]{2}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ ((_ re.loop 9 9) (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "<")))) (re.++ ((_ re.loop 1 1) (re.range "0" "9")) (re.++ ((_ re.loop 3 3) (re.range "A" "Z")) (re.++ ((_ re.loop 7 7) (re.range "0" "9")) (re.++ ((_ re.loop 1 1) (re.range "A" "Z")) (re.++ ((_ re.loop 7 7) (re.range "0" "9")) (re.++ ((_ re.loop 14 14) (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "<")))) ((_ re.loop 2 2) (re.range "0" "9")))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)