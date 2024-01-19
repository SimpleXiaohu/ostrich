;test regex @"^(?:\d{8}|00\d{10}|\+\d{2}\d{8})$"
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (str.to_re "@") (str.to_re "\u{22}")) (re.++ (str.to_re "") (re.union (re.union ((_ re.loop 8 8) (re.range "0" "9")) (re.++ (str.to_re "00") ((_ re.loop 10 10) (re.range "0" "9")))) (re.++ (str.to_re "+") (re.++ ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 8 8) (re.range "0" "9"))))))) (re.++ (str.to_re "") (str.to_re "\u{22}")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)