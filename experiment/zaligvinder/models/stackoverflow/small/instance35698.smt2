;test regex [\u{20}-\x7E]{10}
(declare-const X String)
(assert (str.in_re X ((_ re.loop 10 10) (re.range "\u{20}" "\u{7e}"))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)