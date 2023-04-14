;test regex strQueryString\=([a-z0-9\+]{1,})
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re "Q") (re.++ (str.to_re "u") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (re.++ (str.to_re "y") (re.++ (str.to_re "S") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "g") (re.++ (str.to_re "=") (re.++ (re.* (re.union (re.range "a" "z") (re.union (re.range "0" "9") (str.to_re "+")))) ((_ re.loop 1 1) (re.union (re.range "a" "z") (re.union (re.range "0" "9") (str.to_re "+"))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)