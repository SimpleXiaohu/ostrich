;test regex (((A1X){3})1Y){3}
(declare-const X String)
(assert (str.in_re X ((_ re.loop 3 3) (re.++ ((_ re.loop 3 3) (re.++ (str.to_re "A") (re.++ (str.to_re "1") (str.to_re "X")))) (re.++ (str.to_re "1") (str.to_re "Y"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)