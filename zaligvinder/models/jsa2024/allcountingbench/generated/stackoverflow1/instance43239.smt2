;test regex \d{2}[A-Z]{5}\d{4}L\dZ\d
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ ((_ re.loop 5 5) (re.range "A" "Z")) (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ (str.to_re "L") (re.++ (re.range "0" "9") (re.++ (str.to_re "Z") (re.range "0" "9")))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)