;test regex SELECT REGEXP_SUBSTR("column_name", '([0-9]){6,}')
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "S") (re.++ (str.to_re "E") (re.++ (str.to_re "L") (re.++ (str.to_re "E") (re.++ (str.to_re "C") (re.++ (str.to_re "T") (re.++ (str.to_re " ") (re.++ (str.to_re "R") (re.++ (str.to_re "E") (re.++ (str.to_re "G") (re.++ (str.to_re "E") (re.++ (str.to_re "X") (re.++ (str.to_re "P") (re.++ (str.to_re "_") (re.++ (str.to_re "S") (re.++ (str.to_re "U") (re.++ (str.to_re "B") (re.++ (str.to_re "S") (re.++ (str.to_re "T") (re.++ (str.to_re "R") (re.++ (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "c") (re.++ (str.to_re "o") (re.++ (str.to_re "l") (re.++ (str.to_re "u") (re.++ (str.to_re "m") (re.++ (str.to_re "n") (re.++ (str.to_re "_") (re.++ (str.to_re "n") (re.++ (str.to_re "a") (re.++ (str.to_re "m") (re.++ (str.to_re "e") (str.to_re "\u{22}"))))))))))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{27}") (re.++ (re.++ (re.* (re.range "0" "9")) ((_ re.loop 6 6) (re.range "0" "9"))) (str.to_re "\u{27}"))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)