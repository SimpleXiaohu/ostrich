;test regex ([0-9]\.[0-9]{5}[0]{13}[e]\+05)
(declare-const X String)
(assert (str.in_re X (re.++ (re.range "0" "9") (re.++ (str.to_re ".") (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (re.++ ((_ re.loop 13 13) (str.to_re "0")) (re.++ (str.to_re "e") (re.++ (str.to_re "+") (str.to_re "05")))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)