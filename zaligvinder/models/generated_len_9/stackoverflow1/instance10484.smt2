;test regex ^[A-Z,a-z]{3}[0-9]{7}[A-Z,a-z]{3}$|^\d{7}$
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (re.++ (str.to_re "") (re.++ ((_ re.loop 3 3) (re.union (re.range "A" "Z") (re.union (str.to_re ",") (re.range "a" "z")))) (re.++ ((_ re.loop 7 7) (re.range "0" "9")) ((_ re.loop 3 3) (re.union (re.range "A" "Z") (re.union (str.to_re ",") (re.range "a" "z"))))))) (str.to_re "")) (re.++ (re.++ (str.to_re "") ((_ re.loop 7 7) (re.range "0" "9"))) (str.to_re "")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)