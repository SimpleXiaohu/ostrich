;test regex SELECT id, model FROM table1 WHERE model REGEXP "[--a-zA-Z]{22,}"
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "S") (re.++ (str.to_re "E") (re.++ (str.to_re "L") (re.++ (str.to_re "E") (re.++ (str.to_re "C") (re.++ (str.to_re "T") (re.++ (str.to_re " ") (re.++ (str.to_re "i") (str.to_re "d"))))))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "m") (re.++ (str.to_re "o") (re.++ (str.to_re "d") (re.++ (str.to_re "e") (re.++ (str.to_re "l") (re.++ (str.to_re " ") (re.++ (str.to_re "F") (re.++ (str.to_re "R") (re.++ (str.to_re "O") (re.++ (str.to_re "M") (re.++ (str.to_re " ") (re.++ (str.to_re "t") (re.++ (str.to_re "a") (re.++ (str.to_re "b") (re.++ (str.to_re "l") (re.++ (str.to_re "e") (re.++ (str.to_re "1") (re.++ (str.to_re " ") (re.++ (str.to_re "W") (re.++ (str.to_re "H") (re.++ (str.to_re "E") (re.++ (str.to_re "R") (re.++ (str.to_re "E") (re.++ (str.to_re " ") (re.++ (str.to_re "m") (re.++ (str.to_re "o") (re.++ (str.to_re "d") (re.++ (str.to_re "e") (re.++ (str.to_re "l") (re.++ (str.to_re " ") (re.++ (str.to_re "R") (re.++ (str.to_re "E") (re.++ (str.to_re "G") (re.++ (str.to_re "E") (re.++ (str.to_re "X") (re.++ (str.to_re "P") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{22}") (re.++ (re.++ (re.* (re.union (str.to_re "-") (re.union (str.to_re "-") (re.union (re.range "a" "z") (re.range "A" "Z"))))) ((_ re.loop 22 22) (re.union (str.to_re "-") (re.union (str.to_re "-") (re.union (re.range "a" "z") (re.range "A" "Z")))))) (str.to_re "\u{22}")))))))))))))))))))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)