;test regex ^ *([AaBbCcEeGgHhJjKkLlMmNnPpRrSsTtVvXxYy]\d[a-zA-Z]) *-* *(\d[a-zA-Z]\d) *$|^ *(\d{5}) *$|^ *(\d{5}) *-* *(\d{4}) *$
(declare-const X String)
(assert (str.in_re X (re.union (re.union (re.++ (re.++ (str.to_re "") (re.++ (re.* (str.to_re " ")) (re.++ (re.++ (re.union (str.to_re "A") (re.union (str.to_re "a") (re.union (str.to_re "B") (re.union (str.to_re "b") (re.union (str.to_re "C") (re.union (str.to_re "c") (re.union (str.to_re "E") (re.union (str.to_re "e") (re.union (str.to_re "G") (re.union (str.to_re "g") (re.union (str.to_re "H") (re.union (str.to_re "h") (re.union (str.to_re "J") (re.union (str.to_re "j") (re.union (str.to_re "K") (re.union (str.to_re "k") (re.union (str.to_re "L") (re.union (str.to_re "l") (re.union (str.to_re "M") (re.union (str.to_re "m") (re.union (str.to_re "N") (re.union (str.to_re "n") (re.union (str.to_re "P") (re.union (str.to_re "p") (re.union (str.to_re "R") (re.union (str.to_re "r") (re.union (str.to_re "S") (re.union (str.to_re "s") (re.union (str.to_re "T") (re.union (str.to_re "t") (re.union (str.to_re "V") (re.union (str.to_re "v") (re.union (str.to_re "X") (re.union (str.to_re "x") (re.union (str.to_re "Y") (str.to_re "y")))))))))))))))))))))))))))))))))))) (re.++ (re.range "0" "9") (re.union (re.range "a" "z") (re.range "A" "Z")))) (re.++ (re.* (str.to_re " ")) (re.++ (re.* (str.to_re "-")) (re.++ (re.* (str.to_re " ")) (re.++ (re.++ (re.range "0" "9") (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.range "0" "9"))) (re.* (str.to_re " "))))))))) (str.to_re "")) (re.++ (re.++ (str.to_re "") (re.++ (re.* (str.to_re " ")) (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (re.* (str.to_re " "))))) (str.to_re ""))) (re.++ (re.++ (str.to_re "") (re.++ (re.* (str.to_re " ")) (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (re.++ (re.* (str.to_re " ")) (re.++ (re.* (str.to_re "-")) (re.++ (re.* (str.to_re " ")) (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.* (str.to_re " "))))))))) (str.to_re "")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)