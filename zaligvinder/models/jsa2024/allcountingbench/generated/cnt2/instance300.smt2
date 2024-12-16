;test regex ^([*]|[a-z0-9][a-z0-9\-]{0,62})(?:\.([*]|[a-z0-9][a-z0-9\-]{0,62}))*$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.union (str.to_re "*") (re.++ (re.union (re.range "a" "z") (re.range "0" "9")) ((_ re.loop 0 62) (re.union (re.range "a" "z") (re.union (re.range "0" "9") (str.to_re "-")))))) (re.* (re.++ (str.to_re ".") (re.union (str.to_re "*") (re.++ (re.union (re.range "a" "z") (re.range "0" "9")) ((_ re.loop 0 62) (re.union (re.range "a" "z") (re.union (re.range "0" "9") (str.to_re "-")))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)