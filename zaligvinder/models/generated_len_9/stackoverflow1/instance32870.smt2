;test regex (0{0,3}32)(9[23]|8[0-79]|71|6[0-79]|5[0-9]|2[2568]|1[0-69])([0-9]{2})([0-9]{2})([0-9]{2})
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ ((_ re.loop 0 3) (str.to_re "0")) (str.to_re "32")) (re.++ (re.union (re.union (re.union (re.union (re.union (re.union (re.++ (str.to_re "9") (str.to_re "23")) (re.++ (str.to_re "8") (re.range "0" "79"))) (str.to_re "71")) (re.++ (str.to_re "6") (re.range "0" "79"))) (re.++ (str.to_re "5") (re.range "0" "9"))) (re.++ (str.to_re "2") (str.to_re "2568"))) (re.++ (str.to_re "1") (re.range "0" "69"))) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "0" "9"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)