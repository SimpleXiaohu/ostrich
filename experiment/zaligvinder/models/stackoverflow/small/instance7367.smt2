;test regex =TRIM(REGEXREPLACE("[JGMORGAN - BANK2] n 10 NEWYORK, n 222 CAEN, MONTELLIER, VANNES / TARARTA TIs 1303222074, 1403281851 & 1307239335 et Cloture TIs 1403277567, 1410315029"; "[0-9]*(?:[0-9]{0,9}[^0-9]+)*(?:([0-9]{9,})|[0-9]*\z)"; "$1 "))
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "=") (re.++ (str.to_re "T") (re.++ (str.to_re "R") (re.++ (str.to_re "I") (re.++ (str.to_re "M") (re.++ (str.to_re "R") (re.++ (str.to_re "E") (re.++ (str.to_re "G") (re.++ (str.to_re "E") (re.++ (str.to_re "X") (re.++ (str.to_re "R") (re.++ (str.to_re "E") (re.++ (str.to_re "P") (re.++ (str.to_re "L") (re.++ (str.to_re "A") (re.++ (str.to_re "C") (re.++ (str.to_re "E") (re.++ (re.++ (re.++ (re.++ (re.++ (re.++ (re.++ (str.to_re "\u{22}") (re.++ (re.union (str.to_re "J") (re.union (str.to_re "G") (re.union (str.to_re "M") (re.union (str.to_re "O") (re.union (str.to_re "R") (re.union (str.to_re "G") (re.union (str.to_re "A") (re.union (str.to_re "N") (re.union (re.range " " " ") (re.union (str.to_re "B") (re.union (str.to_re "A") (re.union (str.to_re "N") (re.union (str.to_re "K") (str.to_re "2")))))))))))))) (re.++ (str.to_re " ") (re.++ (str.to_re "n") (re.++ (str.to_re " ") (re.++ (str.to_re "10") (re.++ (str.to_re " ") (re.++ (str.to_re "N") (re.++ (str.to_re "E") (re.++ (str.to_re "W") (re.++ (str.to_re "Y") (re.++ (str.to_re "O") (re.++ (str.to_re "R") (str.to_re "K")))))))))))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "n") (re.++ (str.to_re " ") (re.++ (str.to_re "222") (re.++ (str.to_re " ") (re.++ (str.to_re "C") (re.++ (str.to_re "A") (re.++ (str.to_re "E") (str.to_re "N"))))))))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "M") (re.++ (str.to_re "O") (re.++ (str.to_re "N") (re.++ (str.to_re "T") (re.++ (str.to_re "E") (re.++ (str.to_re "L") (re.++ (str.to_re "L") (re.++ (str.to_re "I") (re.++ (str.to_re "E") (str.to_re "R"))))))))))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "V") (re.++ (str.to_re "A") (re.++ (str.to_re "N") (re.++ (str.to_re "N") (re.++ (str.to_re "E") (re.++ (str.to_re "S") (re.++ (str.to_re " ") (re.++ (str.to_re "/") (re.++ (str.to_re " ") (re.++ (str.to_re "T") (re.++ (str.to_re "A") (re.++ (str.to_re "R") (re.++ (str.to_re "A") (re.++ (str.to_re "R") (re.++ (str.to_re "T") (re.++ (str.to_re "A") (re.++ (str.to_re " ") (re.++ (str.to_re "T") (re.++ (str.to_re "I") (re.++ (str.to_re "s") (re.++ (str.to_re " ") (str.to_re "1303222074"))))))))))))))))))))))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "1403281851") (re.++ (str.to_re " ") (re.++ (str.to_re "&") (re.++ (str.to_re " ") (re.++ (str.to_re "1307239335") (re.++ (str.to_re " ") (re.++ (str.to_re "e") (re.++ (str.to_re "t") (re.++ (str.to_re " ") (re.++ (str.to_re "C") (re.++ (str.to_re "l") (re.++ (str.to_re "o") (re.++ (str.to_re "t") (re.++ (str.to_re "u") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re " ") (re.++ (str.to_re "T") (re.++ (str.to_re "I") (re.++ (str.to_re "s") (re.++ (str.to_re " ") (str.to_re "1403277567"))))))))))))))))))))))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "1410315029") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re ";") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{22}") (re.++ (re.* (re.range "0" "9")) (re.++ (re.* (re.++ ((_ re.loop 0 9) (re.range "0" "9")) (re.+ (re.diff re.allchar (re.range "0" "9"))))) (re.++ (re.union (re.++ (re.* (re.range "0" "9")) ((_ re.loop 9 9) (re.range "0" "9"))) (re.++ (re.* (re.range "0" "9")) (str.to_re "z"))) (re.++ (str.to_re "\u{22}") (re.++ (str.to_re ";") (re.++ (str.to_re " ") (str.to_re "\u{22}"))))))))))))))) (re.++ (str.to_re "") (re.++ (str.to_re "1") (re.++ (str.to_re " ") (str.to_re "\u{22}"))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)