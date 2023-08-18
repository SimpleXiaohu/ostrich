;test regex "^[a-zA-Z]{5}[0-9][a-zA-Z]{2}$"
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "") (re.++ ((_ re.loop 5 5) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.++ (re.range "0" "9") ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))))))) (re.++ (str.to_re "") (str.to_re "\u{22}")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)