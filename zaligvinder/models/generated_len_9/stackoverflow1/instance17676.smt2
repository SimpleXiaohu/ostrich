;test regex [\r\n]{0,}
(declare-const X String)
(assert (str.in_re X (re.++ (re.* (re.union (str.to_re "\u{0d}") (str.to_re "\u{0a}"))) ((_ re.loop 0 0) (re.union (str.to_re "\u{0d}") (str.to_re "\u{0a}"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)