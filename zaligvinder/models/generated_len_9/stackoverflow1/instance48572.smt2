;test regex 216\.54\.215\.([0-9]|[1][0-9]|[2][0-4]){1,3}
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "216") (re.++ (str.to_re ".") (re.++ (str.to_re "54") (re.++ (str.to_re ".") (re.++ (str.to_re "215") (re.++ (str.to_re ".") ((_ re.loop 1 3) (re.union (re.union (re.range "0" "9") (re.++ (str.to_re "1") (re.range "0" "9"))) (re.++ (str.to_re "2") (re.range "0" "4"))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)