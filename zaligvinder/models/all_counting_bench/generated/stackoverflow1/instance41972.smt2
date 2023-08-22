;test regex ^[a-z0-9][a-z0-9_]{2,28}[a-z0-9]$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.union (re.range "a" "z") (re.range "0" "9")) (re.++ ((_ re.loop 2 28) (re.union (re.range "a" "z") (re.union (re.range "0" "9") (str.to_re "_")))) (re.union (re.range "a" "z") (re.range "0" "9"))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)