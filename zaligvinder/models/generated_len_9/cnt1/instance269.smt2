;test regex &[0-9a-z]{2,8}|&#[0-9]{1,7}|[0-9a-f]{1,6}
(declare-const X String)
(assert (str.in_re X (re.union (re.union (re.++ (str.to_re "&") ((_ re.loop 2 8) (re.union (re.range "0" "9") (re.range "a" "z")))) (re.++ (str.to_re "&") (re.++ (str.to_re "#") ((_ re.loop 1 7) (re.range "0" "9"))))) ((_ re.loop 1 6) (re.union (re.range "0" "9") (re.range "a" "f"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)