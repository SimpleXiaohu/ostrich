;test regex ^[-\w.+]+@([A-z0-9][-A-z0-9]+\.)+[A-z]{2,4}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.+ (re.union (str.to_re "-") (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))) (re.union (str.to_re ".") (str.to_re "+"))))) (re.++ (str.to_re "@") (re.++ (re.+ (re.++ (re.union (re.range "A" "z") (re.range "0" "9")) (re.++ (re.+ (re.union (str.to_re "-") (re.union (re.range "A" "z") (re.range "0" "9")))) (str.to_re ".")))) ((_ re.loop 2 4) (re.range "A" "z")))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)