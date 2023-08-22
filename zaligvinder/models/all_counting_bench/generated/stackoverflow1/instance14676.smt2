;test regex /^P[IRST]-?\\d{3}$/gi/
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "/") (re.++ (str.to_re "") (re.++ (str.to_re "P") (re.++ (re.union (str.to_re "I") (re.union (str.to_re "R") (re.union (str.to_re "S") (str.to_re "T")))) (re.++ (re.opt (str.to_re "-")) (re.++ (str.to_re "\\") ((_ re.loop 3 3) (str.to_re "d")))))))) (re.++ (str.to_re "") (re.++ (str.to_re "/") (re.++ (str.to_re "g") (re.++ (str.to_re "i") (str.to_re "/"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)