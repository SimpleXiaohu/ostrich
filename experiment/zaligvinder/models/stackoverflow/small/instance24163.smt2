;test regex ^(A|B)(\d{4})(,)(TextA|TextB|TextC)$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.union (str.to_re "A") (str.to_re "B")) (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ (str.to_re ",") (re.union (re.union (re.++ (str.to_re "T") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (str.to_re "t") (str.to_re "A"))))) (re.++ (str.to_re "T") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (str.to_re "t") (str.to_re "B")))))) (re.++ (str.to_re "T") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (str.to_re "t") (str.to_re "C")))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)