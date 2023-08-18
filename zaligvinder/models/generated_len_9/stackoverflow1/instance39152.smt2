;test regex -(\d{10})\.htm
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "-") (re.++ ((_ re.loop 10 10) (re.range "0" "9")) (re.++ (str.to_re ".") (re.++ (str.to_re "h") (re.++ (str.to_re "t") (str.to_re "m"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)