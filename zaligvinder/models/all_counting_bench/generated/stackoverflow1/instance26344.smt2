;test regex (?:(a{3})*|(a{2,3})*)
(declare-const X String)
(assert (str.in_re X (re.union (re.* ((_ re.loop 3 3) (str.to_re "a"))) (re.* ((_ re.loop 2 3) (str.to_re "a"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)