;test regex s/([^0-9])([xy])/${1}1${2}/g
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (str.to_re "s") (re.++ (str.to_re "/") (re.++ (re.diff re.allchar (re.range "0" "9")) (re.++ (re.union (str.to_re "x") (str.to_re "y")) (str.to_re "/"))))) (re.++ ((_ re.loop 1 1) (str.to_re "")) (str.to_re "1"))) (re.++ ((_ re.loop 2 2) (str.to_re "")) (re.++ (str.to_re "/") (str.to_re "g"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)