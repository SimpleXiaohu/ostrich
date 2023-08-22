;test regex [a-zA-Z0-9]{1,5}#[a-zA-Z0-9]{1,5}-\d{8}-\d{6}#(\d+)
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 1 5) (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.range "0" "9")))) (re.++ (str.to_re "#") (re.++ ((_ re.loop 1 5) (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.range "0" "9")))) (re.++ (str.to_re "-") (re.++ ((_ re.loop 8 8) (re.range "0" "9")) (re.++ (str.to_re "-") (re.++ ((_ re.loop 6 6) (re.range "0" "9")) (re.++ (str.to_re "#") (re.+ (re.range "0" "9"))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)