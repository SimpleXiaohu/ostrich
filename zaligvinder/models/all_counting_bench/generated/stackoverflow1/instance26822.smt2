;test regex ^[a-zA-Z]{2}[0-9]{5}(?:\w{2})?(?:XX|xx)?(?:;[a-zA-Z]{2}[0-9]{5}(?:\w{2})?(?:XX|xx)?)*;?$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (re.++ (re.opt ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))))) (re.++ (re.opt (re.union (re.++ (str.to_re "X") (str.to_re "X")) (re.++ (str.to_re "x") (str.to_re "x")))) (re.++ (re.* (re.++ (str.to_re ";") (re.++ ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (re.++ (re.opt ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))))) (re.opt (re.union (re.++ (str.to_re "X") (str.to_re "X")) (re.++ (str.to_re "x") (str.to_re "x"))))))))) (re.opt (str.to_re ";")))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)