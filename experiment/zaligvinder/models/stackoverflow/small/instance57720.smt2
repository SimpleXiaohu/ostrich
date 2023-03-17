;test regex I{0,3}|IV|V
(declare-const X String)
(assert (str.in_re X (re.union (re.union ((_ re.loop 0 3) (str.to_re "I")) (re.++ (str.to_re "I") (str.to_re "V"))) (str.to_re "V"))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)