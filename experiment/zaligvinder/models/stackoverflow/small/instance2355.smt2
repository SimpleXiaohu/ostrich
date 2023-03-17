;test regex ((\"tel:((\d{11})|(\d{10})|(((\(\d{3}\) ?)|(\d{3}-)|(\d{3}\.))?\d{3}(-|\.)\d{4}))\"))
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re "l") (re.++ (str.to_re ":") (re.++ (re.union (re.union ((_ re.loop 11 11) (re.range "0" "9")) ((_ re.loop 10 10) (re.range "0" "9"))) (re.++ (re.opt (re.union (re.union (re.++ (str.to_re "(") (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.++ (str.to_re ")") (re.opt (str.to_re " "))))) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "-"))) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re ".")))) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.++ (re.union (str.to_re "-") (str.to_re ".")) ((_ re.loop 4 4) (re.range "0" "9")))))) (str.to_re "\u{22}")))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)