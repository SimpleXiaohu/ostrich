;test regex dbResult\.[0-9a-zA-Z]{0,}
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "d") (re.++ (str.to_re "b") (re.++ (str.to_re "R") (re.++ (str.to_re "e") (re.++ (str.to_re "s") (re.++ (str.to_re "u") (re.++ (str.to_re "l") (re.++ (str.to_re "t") (re.++ (str.to_re ".") (re.++ (re.* (re.union (re.range "0" "9") (re.union (re.range "a" "z") (re.range "A" "Z")))) ((_ re.loop 0 0) (re.union (re.range "0" "9") (re.union (re.range "a" "z") (re.range "A" "Z"))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)