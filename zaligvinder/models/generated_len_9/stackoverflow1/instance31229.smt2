;test regex ^[+-]?(?:\d{1,2}(?:\.\d{0,8})?|\.\d{1,8})$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.opt (re.union (str.to_re "+") (str.to_re "-"))) (re.union (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.opt (re.++ (str.to_re ".") ((_ re.loop 0 8) (re.range "0" "9"))))) (re.++ (str.to_re ".") ((_ re.loop 1 8) (re.range "0" "9")))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)