;test regex (ruby|web|development){3}
(declare-const X String)
(assert (str.in_re X ((_ re.loop 3 3) (re.union (re.union (re.++ (str.to_re "r") (re.++ (str.to_re "u") (re.++ (str.to_re "b") (str.to_re "y")))) (re.++ (str.to_re "w") (re.++ (str.to_re "e") (str.to_re "b")))) (re.++ (str.to_re "d") (re.++ (str.to_re "e") (re.++ (str.to_re "v") (re.++ (str.to_re "e") (re.++ (str.to_re "l") (re.++ (str.to_re "o") (re.++ (str.to_re "p") (re.++ (str.to_re "m") (re.++ (str.to_re "e") (re.++ (str.to_re "n") (str.to_re "t")))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)