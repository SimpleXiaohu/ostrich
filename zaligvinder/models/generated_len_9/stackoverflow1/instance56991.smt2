;test regex 1-(20[1-9]|2[1-9]\d|[3-8]\d{2}|9[0-8]\d)
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "1") (re.++ (str.to_re "-") (re.union (re.union (re.union (re.++ (str.to_re "20") (re.range "1" "9")) (re.++ (str.to_re "2") (re.++ (re.range "1" "9") (re.range "0" "9")))) (re.++ (re.range "3" "8") ((_ re.loop 2 2) (re.range "0" "9")))) (re.++ (str.to_re "9") (re.++ (re.range "0" "8") (re.range "0" "9"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)