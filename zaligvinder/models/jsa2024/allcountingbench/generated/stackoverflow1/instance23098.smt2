;test regex ^(D\d{6})([0-9a-z-_]*)(TABLET|SMARTPHONE)?$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.++ (str.to_re "D") ((_ re.loop 6 6) (re.range "0" "9"))) (re.++ (re.* (re.union (re.range "0" "9") (re.union (re.range "a" "z") (re.union (str.to_re "-") (str.to_re "_"))))) (re.opt (re.union (re.++ (str.to_re "T") (re.++ (str.to_re "A") (re.++ (str.to_re "B") (re.++ (str.to_re "L") (re.++ (str.to_re "E") (str.to_re "T")))))) (re.++ (str.to_re "S") (re.++ (str.to_re "M") (re.++ (str.to_re "A") (re.++ (str.to_re "R") (re.++ (str.to_re "T") (re.++ (str.to_re "P") (re.++ (str.to_re "H") (re.++ (str.to_re "O") (re.++ (str.to_re "N") (str.to_re "E"))))))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)