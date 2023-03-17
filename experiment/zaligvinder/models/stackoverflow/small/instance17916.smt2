;test regex (([a]{1}\+[b]{1})?([ab]{1}\+[ba]{1}))
(declare-const X String)
(assert (str.in_re X (re.++ (re.opt (re.++ ((_ re.loop 1 1) (str.to_re "a")) (re.++ (str.to_re "+") ((_ re.loop 1 1) (str.to_re "b"))))) (re.++ ((_ re.loop 1 1) (re.union (str.to_re "a") (str.to_re "b"))) (re.++ (str.to_re "+") ((_ re.loop 1 1) (re.union (str.to_re "b") (str.to_re "a"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)