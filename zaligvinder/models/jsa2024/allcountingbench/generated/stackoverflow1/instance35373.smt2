;test regex WHERE names REGEXP BINARY '^[A-Z]{2,}';
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "W") (re.++ (str.to_re "H") (re.++ (str.to_re "E") (re.++ (str.to_re "R") (re.++ (str.to_re "E") (re.++ (str.to_re " ") (re.++ (str.to_re "n") (re.++ (str.to_re "a") (re.++ (str.to_re "m") (re.++ (str.to_re "e") (re.++ (str.to_re "s") (re.++ (str.to_re " ") (re.++ (str.to_re "R") (re.++ (str.to_re "E") (re.++ (str.to_re "G") (re.++ (str.to_re "E") (re.++ (str.to_re "X") (re.++ (str.to_re "P") (re.++ (str.to_re " ") (re.++ (str.to_re "B") (re.++ (str.to_re "I") (re.++ (str.to_re "N") (re.++ (str.to_re "A") (re.++ (str.to_re "R") (re.++ (str.to_re "Y") (re.++ (str.to_re " ") (str.to_re "\u{27}"))))))))))))))))))))))))))) (re.++ (str.to_re "") (re.++ (re.++ (re.* (re.range "A" "Z")) ((_ re.loop 2 2) (re.range "A" "Z"))) (re.++ (str.to_re "\u{27}") (str.to_re ";")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)