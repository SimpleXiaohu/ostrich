;test regex ^(102[0-3]|10[0-1]\d|[1-9][0-9]{0,2}|0)$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.union (re.union (re.union (re.++ (str.to_re "102") (re.range "0" "3")) (re.++ (str.to_re "10") (re.++ (re.range "0" "1") (re.range "0" "9")))) (re.++ (re.range "1" "9") ((_ re.loop 0 2) (re.range "0" "9")))) (str.to_re "0"))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)