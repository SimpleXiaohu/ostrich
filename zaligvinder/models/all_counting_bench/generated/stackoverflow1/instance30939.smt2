;test regex ^(\$){0,1}[_a-zA-Z][a-zA-Z0-9_]*([?!]){0,1}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ ((_ re.loop 0 1) (str.to_re "$")) (re.++ (re.union (str.to_re "_") (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.++ (re.* (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))) ((_ re.loop 0 1) (re.union (str.to_re "?") (str.to_re "!"))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)