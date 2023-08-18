;test regex r[aeip]{4,4}r
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "r") (re.++ ((_ re.loop 4 4) (re.union (str.to_re "a") (re.union (str.to_re "e") (re.union (str.to_re "i") (str.to_re "p"))))) (str.to_re "r")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)