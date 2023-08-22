;test regex ::c([ad]{1,704})r$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re ":") (re.++ (str.to_re ":") (re.++ (str.to_re "c") (re.++ ((_ re.loop 1 704) (re.union (str.to_re "a") (str.to_re "d"))) (str.to_re "r"))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 200 (str.len X)))
(check-sat)
(get-model)