;test regex www\.(([a-z][a-z0-9]*)?[a-z][\.\-])*([a-z][a-z0-9]*)?[a-z]\.[a-z]{2,}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "w") (re.++ (str.to_re "w") (re.++ (str.to_re "w") (re.++ (str.to_re ".") (re.++ (re.* (re.++ (re.opt (re.++ (re.range "a" "z") (re.* (re.union (re.range "a" "z") (re.range "0" "9"))))) (re.++ (re.range "a" "z") (re.union (str.to_re ".") (str.to_re "-"))))) (re.++ (re.opt (re.++ (re.range "a" "z") (re.* (re.union (re.range "a" "z") (re.range "0" "9"))))) (re.++ (re.range "a" "z") (re.++ (str.to_re ".") (re.++ (re.* (re.range "a" "z")) ((_ re.loop 2 2) (re.range "a" "z"))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)