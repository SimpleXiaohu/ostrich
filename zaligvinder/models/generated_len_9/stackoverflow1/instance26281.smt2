;test regex [\u05d0-\u05ea]{2,}
(declare-const X String)
(assert (str.in_re X (re.++ (re.* (re.range "\u{05d0}" "\u{05ea}")) ((_ re.loop 2 2) (re.range "\u{05d0}" "\u{05ea}")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)