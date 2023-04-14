;test regex \.([a-z]{2,3})\/?$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re ".") (re.++ ((_ re.loop 2 3) (re.range "a" "z")) (re.opt (str.to_re "/")))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)