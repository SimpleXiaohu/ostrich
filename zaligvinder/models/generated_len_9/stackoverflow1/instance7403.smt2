;test regex ^{0}*(q*x|x*q)*
(declare-const X String)
(assert (str.in_re X (re.++ (re.* ((_ re.loop 0 0) (str.to_re ""))) (re.* (re.union (re.++ (re.* (str.to_re "q")) (str.to_re "x")) (re.++ (re.* (str.to_re "x")) (str.to_re "q")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)