;test regex [A-Z][a-z]+(?: [A-Z][a-z]+){0,2}
(declare-const X String)
(assert (str.in_re X (re.++ (re.range "A" "Z") (re.++ (re.+ (re.range "a" "z")) ((_ re.loop 0 2) (re.++ (str.to_re " ") (re.++ (re.range "A" "Z") (re.+ (re.range "a" "z")))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)