;test regex "(\\d)\\1{14}"
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "\u{22}") (re.++ (re.++ (str.to_re "\\") (str.to_re "d")) (re.++ (str.to_re "\\") (re.++ ((_ re.loop 14 14) (str.to_re "1")) (str.to_re "\u{22}")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)