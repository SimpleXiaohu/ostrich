;test regex 1\fraq{0}{1}2\fraq{2}{3}
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "1") (re.++ (str.to_re "\u{0c}") (re.++ (str.to_re "r") (re.++ (str.to_re "a") (re.++ ((_ re.loop 1 1) ((_ re.loop 0 0) (str.to_re "q"))) (re.++ (str.to_re "2") (re.++ (str.to_re "\u{0c}") (re.++ (str.to_re "r") (re.++ (str.to_re "a") ((_ re.loop 3 3) ((_ re.loop 2 2) (str.to_re "q"))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)