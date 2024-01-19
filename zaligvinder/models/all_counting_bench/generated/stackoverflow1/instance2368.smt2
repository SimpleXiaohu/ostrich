;test regex ^[0-9]{4}-[0-9]{2}-[0-9]{2} 20|21|22|23|([0-1][0-9]):[0-5][0-9]:[0-5][0-9]$
(declare-const X String)
(assert (str.in_re X (re.union (re.union (re.union (re.union (re.++ (str.to_re "") (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ (str.to_re "-") (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (str.to_re "-") (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (str.to_re " ") (str.to_re "20")))))))) (str.to_re "21")) (str.to_re "22")) (str.to_re "23")) (re.++ (re.++ (re.++ (re.range "0" "1") (re.range "0" "9")) (re.++ (str.to_re ":") (re.++ (re.range "0" "5") (re.++ (re.range "0" "9") (re.++ (str.to_re ":") (re.++ (re.range "0" "5") (re.range "0" "9"))))))) (str.to_re "")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)