;test regex ([S]|[E]|[T])[1-9]{9}
(declare-const X String)
(assert (str.in_re X (re.++ (re.union (re.union (str.to_re "S") (str.to_re "E")) (str.to_re "T")) ((_ re.loop 9 9) (re.range "1" "9")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)