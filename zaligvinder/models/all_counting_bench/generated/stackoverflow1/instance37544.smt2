;test regex CTG\d{4,4}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "C") (re.++ (str.to_re "T") (re.++ (str.to_re "G") ((_ re.loop 4 4) (re.range "0" "9"))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)