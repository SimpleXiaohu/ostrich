;test regex ([a-zA-Z0-9_\-])([a-zA-Z0-9_\-\.]*)@(\[((25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9][0-9]|[0-9])\.){3}|((([a-zA-Z0-9\-]+)\.)+))([a-zA-Z]{2,}|(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9][0-9]|[0-9])\])
(declare-const X String)
(assert (str.in_re X (re.++ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (re.union (str.to_re "_") (str.to_re "-"))))) (re.++ (re.* (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (re.union (str.to_re "_") (re.union (str.to_re "-") (str.to_re "."))))))) (re.++ (str.to_re "@") (re.++ (re.union (re.++ (str.to_re "[") ((_ re.loop 3 3) (re.++ (re.union (re.union (re.union (re.union (re.++ (str.to_re "25") (re.range "0" "5")) (re.++ (str.to_re "2") (re.++ (re.range "0" "4") (re.range "0" "9")))) (re.++ (str.to_re "1") (re.++ (re.range "0" "9") (re.range "0" "9")))) (re.++ (re.range "1" "9") (re.range "0" "9"))) (re.range "0" "9")) (str.to_re ".")))) (re.+ (re.++ (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "-"))))) (str.to_re ".")))) (re.union (re.++ (re.* (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z")))) (re.++ (re.union (re.union (re.union (re.union (re.++ (str.to_re "25") (re.range "0" "5")) (re.++ (str.to_re "2") (re.++ (re.range "0" "4") (re.range "0" "9")))) (re.++ (str.to_re "1") (re.++ (re.range "0" "9") (re.range "0" "9")))) (re.++ (re.range "1" "9") (re.range "0" "9"))) (re.range "0" "9")) (str.to_re "]")))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)