;test regex h{1}t{1}t{1}p{1}
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 1 1) (str.to_re "h")) (re.++ ((_ re.loop 1 1) (str.to_re "t")) (re.++ ((_ re.loop 1 1) (str.to_re "t")) ((_ re.loop 1 1) (str.to_re "p")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)