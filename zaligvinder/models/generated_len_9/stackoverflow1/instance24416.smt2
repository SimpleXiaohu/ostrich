;test regex (([A-Z]{2}[0-9]{8,9}[A-Z]{1})|([A-Z]{2}[0-9]{8,9}))
(declare-const X String)
(assert (str.in_re X (re.union (re.++ ((_ re.loop 2 2) (re.range "A" "Z")) (re.++ ((_ re.loop 8 9) (re.range "0" "9")) ((_ re.loop 1 1) (re.range "A" "Z")))) (re.++ ((_ re.loop 2 2) (re.range "A" "Z")) ((_ re.loop 8 9) (re.range "0" "9"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)