;test regex (ma|(t){1})
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (str.to_re "m") (str.to_re "a")) ((_ re.loop 1 1) (str.to_re "t")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)