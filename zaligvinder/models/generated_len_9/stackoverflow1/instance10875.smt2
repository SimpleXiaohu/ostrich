;test regex ^(\d{1,12}([.]\d{1,1})?|\d{1,11}([.]\d{1,2})?|\d{1,10}([.]\d{1,3})?)$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.union (re.union (re.++ ((_ re.loop 1 12) (re.range "0" "9")) (re.opt (re.++ (str.to_re ".") ((_ re.loop 1 1) (re.range "0" "9"))))) (re.++ ((_ re.loop 1 11) (re.range "0" "9")) (re.opt (re.++ (str.to_re ".") ((_ re.loop 1 2) (re.range "0" "9")))))) (re.++ ((_ re.loop 1 10) (re.range "0" "9")) (re.opt (re.++ (str.to_re ".") ((_ re.loop 1 3) (re.range "0" "9"))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)