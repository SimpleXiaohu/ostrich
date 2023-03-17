;test regex [Rr][eE3][gG][uU][Ll][aA4][rR]\s[Ee3][xX][pP][rR][eE3][Ss5]{2}[iI1][Oo0][nN][sS5]
(declare-const X String)
(assert (str.in_re X (re.++ (re.union (str.to_re "R") (str.to_re "r")) (re.++ (re.union (str.to_re "e") (re.union (str.to_re "E") (str.to_re "3"))) (re.++ (re.union (str.to_re "g") (str.to_re "G")) (re.++ (re.union (str.to_re "u") (str.to_re "U")) (re.++ (re.union (str.to_re "L") (str.to_re "l")) (re.++ (re.union (str.to_re "a") (re.union (str.to_re "A") (str.to_re "4"))) (re.++ (re.union (str.to_re "r") (str.to_re "R")) (re.++ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) (re.++ (re.union (str.to_re "E") (re.union (str.to_re "e") (str.to_re "3"))) (re.++ (re.union (str.to_re "x") (str.to_re "X")) (re.++ (re.union (str.to_re "p") (str.to_re "P")) (re.++ (re.union (str.to_re "r") (str.to_re "R")) (re.++ (re.union (str.to_re "e") (re.union (str.to_re "E") (str.to_re "3"))) (re.++ ((_ re.loop 2 2) (re.union (str.to_re "S") (re.union (str.to_re "s") (str.to_re "5")))) (re.++ (re.union (str.to_re "i") (re.union (str.to_re "I") (str.to_re "1"))) (re.++ (re.union (str.to_re "O") (re.union (str.to_re "o") (str.to_re "0"))) (re.++ (re.union (str.to_re "n") (str.to_re "N")) (re.union (str.to_re "s") (re.union (str.to_re "S") (str.to_re "5"))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)