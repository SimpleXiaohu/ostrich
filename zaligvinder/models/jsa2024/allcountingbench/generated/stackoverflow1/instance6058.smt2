;test regex ^\+93(77\d|78\d|79\d|700)\d{6}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "+") (re.++ (str.to_re "93") (re.++ (re.union (re.union (re.union (re.++ (str.to_re "77") (re.range "0" "9")) (re.++ (str.to_re "78") (re.range "0" "9"))) (re.++ (str.to_re "79") (re.range "0" "9"))) (str.to_re "700")) ((_ re.loop 6 6) (re.range "0" "9")))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)