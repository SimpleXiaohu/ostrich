;test regex ^[0-9a-zA-Z][0-9a-zA-Z\-\._]{2,31}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.union (re.range "0" "9") (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 2 31) (re.union (re.range "0" "9") (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (str.to_re "-") (re.union (str.to_re ".") (str.to_re "_"))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)