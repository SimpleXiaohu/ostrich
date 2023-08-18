;test regex \d{8}-\d{3}-v5i[3][2]\.exe
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 8 8) (re.range "0" "9")) (re.++ (str.to_re "-") (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.++ (str.to_re "-") (re.++ (str.to_re "v") (re.++ (str.to_re "5") (re.++ (str.to_re "i") (re.++ (str.to_re "3") (re.++ (str.to_re "2") (re.++ (str.to_re ".") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (str.to_re "e")))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)