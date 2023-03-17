;test regex UPPER(postcode) LIKE '[1-9][0-9]{3}[A-Z]{2}'
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "U") (re.++ (str.to_re "P") (re.++ (str.to_re "P") (re.++ (str.to_re "E") (re.++ (str.to_re "R") (re.++ (re.++ (str.to_re "p") (re.++ (str.to_re "o") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "c") (re.++ (str.to_re "o") (re.++ (str.to_re "d") (str.to_re "e")))))))) (re.++ (str.to_re " ") (re.++ (str.to_re "L") (re.++ (str.to_re "I") (re.++ (str.to_re "K") (re.++ (str.to_re "E") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{27}") (re.++ (re.range "1" "9") (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.++ ((_ re.loop 2 2) (re.range "A" "Z")) (str.to_re "\u{27}")))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)