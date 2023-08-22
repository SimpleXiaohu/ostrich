;test regex "^mark_(14[0-9]{4}|150000)$"
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "") (re.++ (str.to_re "m") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (re.++ (str.to_re "k") (re.++ (str.to_re "_") (re.union (re.++ (str.to_re "14") ((_ re.loop 4 4) (re.range "0" "9"))) (str.to_re "150000"))))))))) (re.++ (str.to_re "") (str.to_re "\u{22}")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)