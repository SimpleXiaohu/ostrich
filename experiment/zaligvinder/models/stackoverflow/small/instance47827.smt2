;test regex NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern: RegEX_1_UPPER_1_SPECIAL options:0 error:&error];
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "N") (re.++ (str.to_re "S") (re.++ (str.to_re "R") (re.++ (str.to_re "e") (re.++ (str.to_re "g") (re.++ (str.to_re "u") (re.++ (str.to_re "l") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (re.++ (str.to_re "E") (re.++ (str.to_re "x") (re.++ (str.to_re "p") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "s") (re.++ (str.to_re "s") (re.++ (str.to_re "i") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (re.++ (re.* (str.to_re " ")) (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "g") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (str.to_re " ") (re.++ (str.to_re "=") (re.++ (str.to_re " ") (re.++ (re.union (str.to_re "N") (re.union (str.to_re "S") (re.union (str.to_re "R") (re.union (str.to_re "e") (re.union (str.to_re "g") (re.union (str.to_re "u") (re.union (str.to_re "l") (re.union (str.to_re "a") (re.union (str.to_re "r") (re.union (str.to_re "E") (re.union (str.to_re "x") (re.union (str.to_re "p") (re.union (str.to_re "r") (re.union (str.to_re "e") (re.union (str.to_re "s") (re.union (str.to_re "s") (re.union (str.to_re "i") (re.union (str.to_re "o") (re.union (str.to_re "n") (re.union (str.to_re " ") (re.union (str.to_re "r") (re.union (str.to_re "e") (re.union (str.to_re "g") (re.union (str.to_re "u") (re.union (str.to_re "l") (re.union (str.to_re "a") (re.union (str.to_re "r") (re.union (str.to_re "E") (re.union (str.to_re "x") (re.union (str.to_re "p") (re.union (str.to_re "r") (re.union (str.to_re "e") (re.union (str.to_re "s") (re.union (str.to_re "s") (re.union (str.to_re "i") (re.union (str.to_re "o") (re.union (str.to_re "n") (re.union (str.to_re "W") (re.union (str.to_re "i") (re.union (str.to_re "t") (re.union (str.to_re "h") (re.union (str.to_re "P") (re.union (str.to_re "a") (re.union (str.to_re "t") (re.union (str.to_re "t") (re.union (str.to_re "e") (re.union (str.to_re "r") (re.union (str.to_re "n") (re.union (str.to_re ":") (re.union (str.to_re " ") (re.union (str.to_re "R") (re.union (str.to_re "e") (re.union (str.to_re "g") (re.union (str.to_re "E") (re.union (str.to_re "X") (re.union (str.to_re "_") (re.union (str.to_re "1") (re.union (str.to_re "_") (re.union (str.to_re "U") (re.union (str.to_re "P") (re.union (str.to_re "P") (re.union (str.to_re "E") (re.union (str.to_re "R") (re.union (str.to_re "_") (re.union (str.to_re "1") (re.union (str.to_re "_") (re.union (str.to_re "S") (re.union (str.to_re "P") (re.union (str.to_re "E") (re.union (str.to_re "C") (re.union (str.to_re "I") (re.union (str.to_re "A") (re.union (str.to_re "L") (re.union (str.to_re " ") (re.union (str.to_re "o") (re.union (str.to_re "p") (re.union (str.to_re "t") (re.union (str.to_re "i") (re.union (str.to_re "o") (re.union (str.to_re "n") (re.union (str.to_re "s") (re.union (str.to_re ":") (re.union (str.to_re "0") (re.union (str.to_re " ") (re.union (str.to_re "e") (re.union (str.to_re "r") (re.union (str.to_re "r") (re.union (str.to_re "o") (re.union (str.to_re "r") (re.union (str.to_re ":") (re.union (str.to_re "&") (re.union (str.to_re "e") (re.union (str.to_re "r") (re.union (str.to_re "r") (re.union (str.to_re "o") (str.to_re "r")))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) (str.to_re ";"))))))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)