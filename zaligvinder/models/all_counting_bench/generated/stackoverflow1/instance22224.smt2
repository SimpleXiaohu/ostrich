;test regex [a-z]\d[sf]\d{2}bscs\d{4}
(declare-const X String)
(assert (str.in_re X (re.++ (re.range "a" "z") (re.++ (re.range "0" "9") (re.++ (re.union (str.to_re "s") (str.to_re "f")) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (str.to_re "b") (re.++ (str.to_re "s") (re.++ (str.to_re "c") (re.++ (str.to_re "s") ((_ re.loop 4 4) (re.range "0" "9"))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)