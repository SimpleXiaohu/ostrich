;test regex ((http){0,1}|(www){0,1})
(declare-const X String)
(assert (str.in_re X (re.union ((_ re.loop 0 1) (re.++ (str.to_re "h") (re.++ (str.to_re "t") (re.++ (str.to_re "t") (str.to_re "p"))))) ((_ re.loop 0 1) (re.++ (str.to_re "w") (re.++ (str.to_re "w") (str.to_re "w")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)