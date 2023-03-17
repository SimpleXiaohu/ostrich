;test regex (^(49030)[2-9](\d{10}$|\d{12,13}$))
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "") (re.++ (str.to_re "49030") (re.++ (re.range "2" "9") (re.union (re.++ ((_ re.loop 10 10) (re.range "0" "9")) (str.to_re "")) (re.++ ((_ re.loop 12 13) (re.range "0" "9")) (str.to_re ""))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 50 (str.len X)))
(check-sat)
(get-model)