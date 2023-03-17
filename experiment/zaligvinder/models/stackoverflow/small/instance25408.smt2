;test regex @"filename[2-9][0-9]{3}-[0-1][0-9]-[0-3][0-9]_[0-2][0-9]-[0-5][0-9]-[0-5][0-9].ext$"
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "@") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "f") (re.++ (str.to_re "i") (re.++ (str.to_re "l") (re.++ (str.to_re "e") (re.++ (str.to_re "n") (re.++ (str.to_re "a") (re.++ (str.to_re "m") (re.++ (str.to_re "e") (re.++ (re.range "2" "9") (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.++ (str.to_re "-") (re.++ (re.range "0" "1") (re.++ (re.range "0" "9") (re.++ (str.to_re "-") (re.++ (re.range "0" "3") (re.++ (re.range "0" "9") (re.++ (str.to_re "_") (re.++ (re.range "0" "2") (re.++ (re.range "0" "9") (re.++ (str.to_re "-") (re.++ (re.range "0" "5") (re.++ (re.range "0" "9") (re.++ (str.to_re "-") (re.++ (re.range "0" "5") (re.++ (re.range "0" "9") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "e") (re.++ (str.to_re "x") (str.to_re "t"))))))))))))))))))))))))))))))) (re.++ (str.to_re "") (str.to_re "\u{22}")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)