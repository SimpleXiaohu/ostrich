;test regex [DC]{1}\d{7}[0001000-9999999]
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 1 1) (re.union (str.to_re "D") (str.to_re "C"))) (re.++ ((_ re.loop 7 7) (re.range "0" "9")) (re.range "0001000" "9999999")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)