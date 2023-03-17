;test regex (?:\d{6,10})D|C
(declare-const X String)
(assert (str.in_re X (re.union (re.++ ((_ re.loop 6 10) (re.range "0" "9")) (str.to_re "D")) (str.to_re "C"))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)