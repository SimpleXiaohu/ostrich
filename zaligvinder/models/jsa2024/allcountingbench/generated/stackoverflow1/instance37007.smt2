;test regex ^[N-R][a-zA-Z]{3} [N-R][a-zA-Z]{3}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.range "N" "R") (re.++ ((_ re.loop 3 3) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.++ (str.to_re " ") (re.++ (re.range "N" "R") ((_ re.loop 3 3) (re.union (re.range "a" "z") (re.range "A" "Z")))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)