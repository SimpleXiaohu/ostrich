;test regex [a-zA-Z]{2,3}\\[a-zA-Z0-9]{7,8}
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 2 3) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.++ (str.to_re "\\") ((_ re.loop 7 8) (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.range "0" "9"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)