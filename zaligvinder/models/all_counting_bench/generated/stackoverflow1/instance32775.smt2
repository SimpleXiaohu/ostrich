;test regex 0[1456789]{1}-[0-9]{6}
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "0") (re.++ ((_ re.loop 1 1) (str.to_re "1456789")) (re.++ (str.to_re "-") ((_ re.loop 6 6) (re.range "0" "9")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)