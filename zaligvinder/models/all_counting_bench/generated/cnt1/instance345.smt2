;test regex T([A-z0-9]){8}\/B([A-z0-9]){8}\/([A-z0-9]){24}\/?$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "T") (re.++ ((_ re.loop 8 8) (re.union (re.range "A" "z") (re.range "0" "9"))) (re.++ (str.to_re "/") (re.++ (str.to_re "B") (re.++ ((_ re.loop 8 8) (re.union (re.range "A" "z") (re.range "0" "9"))) (re.++ (str.to_re "/") (re.++ ((_ re.loop 24 24) (re.union (re.range "A" "z") (re.range "0" "9"))) (re.opt (str.to_re "/"))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)