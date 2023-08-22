;test regex 3AE[A-Za-z]{9}////
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "3") (re.++ (str.to_re "A") (re.++ (str.to_re "E") (re.++ ((_ re.loop 9 9) (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.++ (str.to_re "/") (re.++ (str.to_re "/") (re.++ (str.to_re "/") (str.to_re "/"))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)