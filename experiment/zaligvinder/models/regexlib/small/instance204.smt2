;test regex (^3[47])((\d{11}$)|(\d{13}$))
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "3") (str.to_re "47"))) (re.union (re.++ ((_ re.loop 11 11) (re.range "0" "9")) (str.to_re "")) (re.++ ((_ re.loop 13 13) (re.range "0" "9")) (str.to_re ""))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)