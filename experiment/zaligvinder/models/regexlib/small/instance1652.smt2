;test regex (^[0][2][1579]{1})(\d{6,7}$)
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "0") (re.++ (str.to_re "2") ((_ re.loop 1 1) (str.to_re "1579"))))) (re.++ ((_ re.loop 6 7) (re.range "0" "9")) (str.to_re "")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)