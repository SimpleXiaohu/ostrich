;test regex (P|M){1}[0-9]{3,5}Z(p|m){1}[0-9]{3,5}
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 1 1) (re.union (str.to_re "P") (str.to_re "M"))) (re.++ ((_ re.loop 3 5) (re.range "0" "9")) (re.++ (str.to_re "Z") (re.++ ((_ re.loop 1 1) (re.union (str.to_re "p") (str.to_re "m"))) ((_ re.loop 3 5) (re.range "0" "9"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)