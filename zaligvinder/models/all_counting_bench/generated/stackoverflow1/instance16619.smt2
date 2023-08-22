;test regex ^[A-Za-z]*\d{3}\d*[A-Za-z]*
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "") (re.++ (re.* (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.++ (re.* (re.range "0" "9")) (re.* (re.union (re.range "A" "Z") (re.range "a" "z")))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)