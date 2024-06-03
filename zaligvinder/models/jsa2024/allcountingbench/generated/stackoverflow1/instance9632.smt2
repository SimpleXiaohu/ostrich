;test regex (1[0-5]|[0-9])/[A-Z]{3}\(Naing\)[0-9]{6}
(declare-const X String)
(assert (str.in_re X (re.++ (re.union (re.++ (str.to_re "1") (re.range "0" "5")) (re.range "0" "9")) (re.++ (str.to_re "/") (re.++ ((_ re.loop 3 3) (re.range "A" "Z")) (re.++ (str.to_re "(") (re.++ (str.to_re "N") (re.++ (str.to_re "a") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "g") (re.++ (str.to_re ")") ((_ re.loop 6 6) (re.range "0" "9"))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)