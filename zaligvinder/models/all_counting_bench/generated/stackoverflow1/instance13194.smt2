;test regex ([a-zA-Z]*-\d{4}-\d{2}-\d{2}(?:-\d*)?_)\w_\d(_A2)_\d*(\.xxx)$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (re.* (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.++ (str.to_re "-") (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ (str.to_re "-") (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (str.to_re "-") (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (re.opt (re.++ (str.to_re "-") (re.* (re.range "0" "9")))) (str.to_re "_"))))))))) (re.++ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))) (re.++ (str.to_re "_") (re.++ (re.range "0" "9") (re.++ (re.++ (str.to_re "_") (re.++ (str.to_re "A") (str.to_re "2"))) (re.++ (str.to_re "_") (re.++ (re.* (re.range "0" "9")) (re.++ (str.to_re ".") (re.++ (str.to_re "x") (re.++ (str.to_re "x") (str.to_re "x"))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)