;test regex ^([a-zA-Z])|([a-zA-Z][A-Za-z0-9\_]{2,128})$
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (str.to_re "") (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.++ (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) ((_ re.loop 2 128) (re.union (re.range "A" "Z") (re.union (re.range "a" "z") (re.union (re.range "0" "9") (str.to_re "_")))))) (str.to_re "")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 50 (str.len X)))
(check-sat)
(get-model)