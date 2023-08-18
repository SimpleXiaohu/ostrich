;test regex 55(-?\d-?){8,12}
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "55") ((_ re.loop 8 12) (re.++ (re.opt (str.to_re "-")) (re.++ (re.range "0" "9") (re.opt (str.to_re "-"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)