;test regex Int( x Int){0,2}(' Int){0,1}
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "I") (re.++ (str.to_re "n") (re.++ (str.to_re "t") (re.++ ((_ re.loop 0 2) (re.++ (str.to_re " ") (re.++ (str.to_re "x") (re.++ (str.to_re " ") (re.++ (str.to_re "I") (re.++ (str.to_re "n") (str.to_re "t"))))))) ((_ re.loop 0 1) (re.++ (str.to_re "\u{27}") (re.++ (str.to_re " ") (re.++ (str.to_re "I") (re.++ (str.to_re "n") (str.to_re "t"))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)