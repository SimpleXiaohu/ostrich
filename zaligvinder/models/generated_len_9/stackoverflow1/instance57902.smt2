;test regex (WIFLYMODULE)-[0-9]{4}
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "W") (re.++ (str.to_re "I") (re.++ (str.to_re "F") (re.++ (str.to_re "L") (re.++ (str.to_re "Y") (re.++ (str.to_re "M") (re.++ (str.to_re "O") (re.++ (str.to_re "D") (re.++ (str.to_re "U") (re.++ (str.to_re "L") (str.to_re "E"))))))))))) (re.++ (str.to_re "-") ((_ re.loop 4 4) (re.range "0" "9"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)