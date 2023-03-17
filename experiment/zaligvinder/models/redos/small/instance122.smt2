;test regex (?:^|msid=)([0-9]{21}\.[0-9a-f]{21})(?:$|&)
(declare-const X String)
(assert (str.in_re X (re.++ (re.union (str.to_re "") (re.++ (str.to_re "m") (re.++ (str.to_re "s") (re.++ (str.to_re "i") (re.++ (str.to_re "d") (str.to_re "=")))))) (re.++ (re.++ ((_ re.loop 21 21) (re.range "0" "9")) (re.++ (str.to_re ".") ((_ re.loop 21 21) (re.union (re.range "0" "9") (re.range "a" "f"))))) (re.union (str.to_re "") (str.to_re "&"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)