;test regex &amp;#([0-9]{1,5}|x[0-9a-fA-F]{1,4});
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "&") (re.++ (str.to_re "a") (re.++ (str.to_re "m") (re.++ (str.to_re "p") (re.++ (str.to_re ";") (re.++ (str.to_re "#") (re.++ (re.union ((_ re.loop 1 5) (re.range "0" "9")) (re.++ (str.to_re "x") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.union (re.range "a" "f") (re.range "A" "F")))))) (str.to_re ";"))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)