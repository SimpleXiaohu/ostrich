;test regex (o{0,2}b?c{0,2}d?f?)
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 0 2) (str.to_re "o")) (re.++ (re.opt (str.to_re "b")) (re.++ ((_ re.loop 0 2) (str.to_re "c")) (re.++ (re.opt (str.to_re "d")) (re.opt (str.to_re "f"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)