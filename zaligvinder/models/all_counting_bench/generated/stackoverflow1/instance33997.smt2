;test regex ^journal\.\d{4}\.txt$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "j") (re.++ (str.to_re "o") (re.++ (str.to_re "u") (re.++ (str.to_re "r") (re.++ (str.to_re "n") (re.++ (str.to_re "a") (re.++ (str.to_re "l") (re.++ (str.to_re ".") (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ (str.to_re ".") (re.++ (str.to_re "t") (re.++ (str.to_re "x") (str.to_re "t")))))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)