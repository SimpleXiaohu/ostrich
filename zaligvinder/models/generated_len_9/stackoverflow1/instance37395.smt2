;test regex 169\.254\.([1-9]{1,2}|[1-9]{1,2}[1-4])
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "169") (re.++ (str.to_re ".") (re.++ (str.to_re "254") (re.++ (str.to_re ".") (re.union ((_ re.loop 1 2) (re.range "1" "9")) (re.++ ((_ re.loop 1 2) (re.range "1" "9")) (re.range "1" "4")))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)