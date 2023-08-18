;test regex (\w+)\.emx#\w+\?\1\/\w+AL\d{5}\?
(declare-const X String)
(assert (str.in_re X (re.++ (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))) (re.++ (str.to_re ".") (re.++ (str.to_re "e") (re.++ (str.to_re "m") (re.++ (str.to_re "x") (re.++ (str.to_re "#") (re.++ (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))) (re.++ (str.to_re "?") (re.++ (_ re.reference 1) (re.++ (str.to_re "/") (re.++ (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))) (re.++ (str.to_re "A") (re.++ (str.to_re "L") (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (str.to_re "?")))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)