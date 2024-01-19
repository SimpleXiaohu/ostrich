;test regex ((?:w{3}\.)?(?:[a-z0-9]+)(?:\.[a-z]{2,6}))
(declare-const X String)
(assert (str.in_re X (re.++ (re.opt (re.++ ((_ re.loop 3 3) (str.to_re "w")) (str.to_re "."))) (re.++ (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (re.++ (str.to_re ".") ((_ re.loop 2 6) (re.range "a" "z")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)