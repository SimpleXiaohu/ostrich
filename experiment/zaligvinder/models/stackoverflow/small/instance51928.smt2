;test regex ^([01]?[0-9]?[0-9]|2[0-4][0-9]|25[0-5])(\.[01]?[0-9]?[0-9]|2[0-4][0-9]|25[0-5]){3}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.union (re.union (re.++ (re.opt (str.to_re "01")) (re.++ (re.opt (re.range "0" "9")) (re.range "0" "9"))) (re.++ (str.to_re "2") (re.++ (re.range "0" "4") (re.range "0" "9")))) (re.++ (str.to_re "25") (re.range "0" "5"))) ((_ re.loop 3 3) (re.union (re.union (re.++ (str.to_re ".") (re.++ (re.opt (str.to_re "01")) (re.++ (re.opt (re.range "0" "9")) (re.range "0" "9")))) (re.++ (str.to_re "2") (re.++ (re.range "0" "4") (re.range "0" "9")))) (re.++ (str.to_re "25") (re.range "0" "5")))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)