;test regex x{1,3}{1,}
(declare-const X String)
(assert (str.in_re X (re.++ (re.* ((_ re.loop 1 3) (str.to_re "x"))) ((_ re.loop 1 1) ((_ re.loop 1 3) (str.to_re "x"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)