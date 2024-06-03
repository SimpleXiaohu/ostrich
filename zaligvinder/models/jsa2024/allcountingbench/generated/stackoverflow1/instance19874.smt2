;test regex (C{6}|(GA){4}|(AT){3})
(declare-const X String)
(assert (str.in_re X (re.union (re.union ((_ re.loop 6 6) (str.to_re "C")) ((_ re.loop 4 4) (re.++ (str.to_re "G") (str.to_re "A")))) ((_ re.loop 3 3) (re.++ (str.to_re "A") (str.to_re "T"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)