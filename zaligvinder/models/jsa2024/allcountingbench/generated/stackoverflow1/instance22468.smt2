;test regex "|(\d{0,2}/){2}\d{4}|"
(declare-const X String)
(assert (str.in_re X (re.union (re.union (str.to_re "\u{22}") (re.++ ((_ re.loop 2 2) (re.++ ((_ re.loop 0 2) (re.range "0" "9")) (str.to_re "/"))) ((_ re.loop 4 4) (re.range "0" "9")))) (str.to_re "\u{22}"))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)