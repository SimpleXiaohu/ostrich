;test regex ^rake d\n *x{80}
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "") (re.++ (str.to_re "r") (re.++ (str.to_re "a") (re.++ (str.to_re "k") (re.++ (str.to_re "e") (re.++ (str.to_re " ") (re.++ (str.to_re "d") (re.++ (str.to_re "\u{0a}") (re.++ (re.* (str.to_re " ")) ((_ re.loop 80 80) (str.to_re "x")))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 200 (str.len X)))
(check-sat)
(get-model)