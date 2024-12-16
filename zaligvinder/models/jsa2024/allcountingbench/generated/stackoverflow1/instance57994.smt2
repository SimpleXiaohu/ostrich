;test regex ^[a-zA-z]{3,4}(?: M[123])?$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ ((_ re.loop 3 4) (re.union (re.range "a" "z") (re.range "A" "z"))) (re.opt (re.++ (str.to_re " ") (re.++ (str.to_re "M") (str.to_re "123")))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)