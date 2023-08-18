;test regex ^(-?(90\.0{4,6})|([0-8]\d{0,1})\.\d{4,6})$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.union (re.++ (re.opt (str.to_re "-")) (re.++ (str.to_re "90") (re.++ (str.to_re ".") ((_ re.loop 4 6) (str.to_re "0"))))) (re.++ (re.++ (re.range "0" "8") ((_ re.loop 0 1) (re.range "0" "9"))) (re.++ (str.to_re ".") ((_ re.loop 4 6) (re.range "0" "9")))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)