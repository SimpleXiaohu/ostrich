;test regex ^[A-Z]\.\d{8}(?:\.\d{2}|\.\d{2}\.\d{3}|\.\d{2}\.\d{3}\.\d{2})$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.range "A" "Z") (re.++ (str.to_re ".") (re.++ ((_ re.loop 8 8) (re.range "0" "9")) (re.union (re.union (re.++ (str.to_re ".") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to_re ".") (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (str.to_re ".") ((_ re.loop 3 3) (re.range "0" "9")))))) (re.++ (str.to_re ".") (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (str.to_re ".") (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.++ (str.to_re ".") ((_ re.loop 2 2) (re.range "0" "9")))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)