;test regex (\d{9}|\d{14}) should work
(declare-const X String)
(assert (str.in_re X (re.++ (re.union ((_ re.loop 9 9) (re.range "0" "9")) ((_ re.loop 14 14) (re.range "0" "9"))) (re.++ (str.to_re " ") (re.++ (str.to_re "s") (re.++ (str.to_re "h") (re.++ (str.to_re "o") (re.++ (str.to_re "u") (re.++ (str.to_re "l") (re.++ (str.to_re "d") (re.++ (str.to_re " ") (re.++ (str.to_re "w") (re.++ (str.to_re "o") (re.++ (str.to_re "r") (str.to_re "k")))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)