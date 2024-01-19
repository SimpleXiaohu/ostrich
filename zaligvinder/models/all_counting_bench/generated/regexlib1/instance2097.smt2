;test regex [0-9]{3}P[A-Z][0-9]{7}[0-9X]
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.++ (str.to_re "P") (re.++ (re.range "A" "Z") (re.++ ((_ re.loop 7 7) (re.range "0" "9")) (re.union (re.range "0" "9") (str.to_re "X"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)