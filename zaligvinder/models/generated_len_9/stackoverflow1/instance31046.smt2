;test regex ^(([0-9]|[0-9][0-9]|[1][0-4][0-9])?(\.[0-9]{0,2})?|(150)|(150\.00))$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.union (re.union (re.++ (re.opt (re.union (re.union (re.range "0" "9") (re.++ (re.range "0" "9") (re.range "0" "9"))) (re.++ (str.to_re "1") (re.++ (re.range "0" "4") (re.range "0" "9"))))) (re.opt (re.++ (str.to_re ".") ((_ re.loop 0 2) (re.range "0" "9"))))) (str.to_re "150")) (re.++ (str.to_re "150") (re.++ (str.to_re ".") (str.to_re "00"))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)