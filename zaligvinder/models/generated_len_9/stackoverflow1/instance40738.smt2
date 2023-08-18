;test regex ^((a{1,3}|b){1,4}|(a{1,4}|a?b|ba){1,3}|((a{2,3}|b){2}|aaba|abaa){2})$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.union (re.union ((_ re.loop 1 4) (re.union ((_ re.loop 1 3) (str.to_re "a")) (str.to_re "b"))) ((_ re.loop 1 3) (re.union (re.union ((_ re.loop 1 4) (str.to_re "a")) (re.++ (re.opt (str.to_re "a")) (str.to_re "b"))) (re.++ (str.to_re "b") (str.to_re "a"))))) ((_ re.loop 2 2) (re.union (re.union ((_ re.loop 2 2) (re.union ((_ re.loop 2 3) (str.to_re "a")) (str.to_re "b"))) (re.++ (str.to_re "a") (re.++ (str.to_re "a") (re.++ (str.to_re "b") (str.to_re "a"))))) (re.++ (str.to_re "a") (re.++ (str.to_re "b") (re.++ (str.to_re "a") (str.to_re "a")))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)