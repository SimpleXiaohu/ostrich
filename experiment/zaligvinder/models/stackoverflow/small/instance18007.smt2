;test regex ([a-zA-Z0-9]{5,6}_[a-zA-Z0-9]{5})|[a-zA-Z0-9]{6}
(declare-const X String)
(assert (str.in_re X (re.union (re.++ ((_ re.loop 5 6) (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.range "0" "9")))) (re.++ (str.to_re "_") ((_ re.loop 5 5) (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.range "0" "9")))))) ((_ re.loop 6 6) (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.range "0" "9")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)