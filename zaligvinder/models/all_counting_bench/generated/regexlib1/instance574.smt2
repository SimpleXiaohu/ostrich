;test regex ^(((0|((\+)?91(\-)?))|((\((\+)?91\)(\-)?)))?[7-9]\d{9})?$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.opt (re.++ (re.opt (re.union (re.union (str.to_re "0") (re.++ (re.opt (str.to_re "+")) (re.++ (str.to_re "91") (re.opt (str.to_re "-"))))) (re.++ (str.to_re "(") (re.++ (re.opt (str.to_re "+")) (re.++ (str.to_re "91") (re.++ (str.to_re ")") (re.opt (str.to_re "-")))))))) (re.++ (re.range "7" "9") ((_ re.loop 9 9) (re.range "0" "9")))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)