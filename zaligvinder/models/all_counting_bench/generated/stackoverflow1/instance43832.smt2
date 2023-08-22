;test regex product="^[A-Z0-9]{2}\w[A-Z0-9]{6,7}\w[A-Z]{1}\.EIP"
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "p") (re.++ (str.to_re "r") (re.++ (str.to_re "o") (re.++ (str.to_re "d") (re.++ (str.to_re "u") (re.++ (str.to_re "c") (re.++ (str.to_re "t") (re.++ (str.to_re "=") (str.to_re "\u{22}"))))))))) (re.++ (str.to_re "") (re.++ ((_ re.loop 2 2) (re.union (re.range "A" "Z") (re.range "0" "9"))) (re.++ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))) (re.++ ((_ re.loop 6 7) (re.union (re.range "A" "Z") (re.range "0" "9"))) (re.++ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))) (re.++ ((_ re.loop 1 1) (re.range "A" "Z")) (re.++ (str.to_re ".") (re.++ (str.to_re "E") (re.++ (str.to_re "I") (re.++ (str.to_re "P") (str.to_re "\u{22}"))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)