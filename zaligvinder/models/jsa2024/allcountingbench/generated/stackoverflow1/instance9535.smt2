;test regex 'my_file_name_01012013_111546.xls' -replace '_[0-9]{8}_[0-9]{6}' ''
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "m") (re.++ (str.to_re "y") (re.++ (str.to_re "_") (re.++ (str.to_re "f") (re.++ (str.to_re "i") (re.++ (str.to_re "l") (re.++ (str.to_re "e") (re.++ (str.to_re "_") (re.++ (str.to_re "n") (re.++ (str.to_re "a") (re.++ (str.to_re "m") (re.++ (str.to_re "e") (re.++ (str.to_re "_") (re.++ (str.to_re "01012013") (re.++ (str.to_re "_") (re.++ (str.to_re "111546") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "x") (re.++ (str.to_re "l") (re.++ (str.to_re "s") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "p") (re.++ (str.to_re "l") (re.++ (str.to_re "a") (re.++ (str.to_re "c") (re.++ (str.to_re "e") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "_") (re.++ ((_ re.loop 8 8) (re.range "0" "9")) (re.++ (str.to_re "_") (re.++ ((_ re.loop 6 6) (re.range "0" "9")) (re.++ (str.to_re "\u{27}") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{27}") (str.to_re "\u{27}")))))))))))))))))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)