;test regex ^(?:[1-9]\d0|1\d{2}0|2000)$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.union (re.union (re.++ (re.range "1" "9") (re.++ (re.range "0" "9") (str.to_re "0"))) (re.++ (str.to_re "1") (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "0")))) (str.to_re "2000"))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)