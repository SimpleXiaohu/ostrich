;test regex ^policy-map\\s+([\\x21-\\x7e]{1,40})$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "p") (re.++ (str.to_re "o") (re.++ (str.to_re "l") (re.++ (str.to_re "i") (re.++ (str.to_re "c") (re.++ (str.to_re "y") (re.++ (str.to_re "-") (re.++ (str.to_re "m") (re.++ (str.to_re "a") (re.++ (str.to_re "p") (re.++ (str.to_re "\\") (re.++ (re.+ (str.to_re "s")) ((_ re.loop 1 40) (re.union (str.to_re "\\") (re.union (str.to_re "x") (re.union (re.range "21" "\\") (re.union (str.to_re "x") (re.union (str.to_re "7") (str.to_re "e")))))))))))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)