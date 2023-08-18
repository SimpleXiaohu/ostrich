;test regex ^[0-9A-HJ-NP-RT-Y][A-Z0-9]{2}(?:BB|KA|JQ)$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.union (re.range "0" "9") (re.union (re.range "A" "H") (re.union (re.range "J" "N") (re.union (re.range "P" "R") (re.range "T" "Y"))))) (re.++ ((_ re.loop 2 2) (re.union (re.range "A" "Z") (re.range "0" "9"))) (re.union (re.union (re.++ (str.to_re "B") (str.to_re "B")) (re.++ (str.to_re "K") (str.to_re "A"))) (re.++ (str.to_re "J") (str.to_re "Q")))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)