;test regex (zz){5,}
(declare-const X String)
(assert (str.in_re X (re.++ (re.* (re.++ (str.to_re "z") (str.to_re "z"))) ((_ re.loop 5 5) (re.++ (str.to_re "z") (str.to_re "z"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)