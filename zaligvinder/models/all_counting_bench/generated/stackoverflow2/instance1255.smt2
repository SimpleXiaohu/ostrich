;test regex ^[a-zA-Z]{1,255}, (100|[1-9][0-9]?)$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (str.to_re "") ((_ re.loop 1 255) (re.union (re.range "a" "z") (re.range "A" "Z")))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.union (str.to_re "100") (re.++ (re.range "1" "9") (re.opt (re.range "0" "9"))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)