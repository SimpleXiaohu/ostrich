;test regex (((^[BEGLMNS][1-9]\d?) | (^W[2-9] ) | ( ^( A[BL] | B[ABDHLNRST] | C[ABFHMORTVW] | D[ADEGHLNTY] | E[HNX] | F[KY] | G[LUY] | H[ADGPRSUX] | I[GMPV] | JE | K[ATWY] | L[ADELNSU] | M[EKL] | N[EGNPRW] | O[LX] | P[AEHLOR] | R[GHM] | S[AEGKL-PRSTWY] | T[ADFNQRSW] | UB | W[ADFNRSV] | YO | ZE ) \d\d?) | (^W1[A-HJKSTUW0-9]) | ((  (^WC[1-2])  |  (^EC[1-4]) | (^SW1)  ) [ABEHMNPRVWXY] ) ) (\s*)?  ([0-9][ABD-HJLNP-UW-Z]{2})) | (^GIR\s?0AA)
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (re.++ (re.union (re.union (re.union (re.union (re.++ (re.++ (str.to_re "") (re.++ (re.union (str.to_re "B") (re.union (str.to_re "E") (re.union (str.to_re "G") (re.union (str.to_re "L") (re.union (str.to_re "M") (re.union (str.to_re "N") (str.to_re "S"))))))) (re.++ (re.range "1" "9") (re.opt (re.range "0" "9"))))) (str.to_re " ")) (re.++ (str.to_re " ") (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "W") (re.++ (re.range "2" "9") (str.to_re " ")))) (str.to_re " ")))) (re.++ (str.to_re " ") (re.++ (re.++ (str.to_re " ") (re.++ (str.to_re "") (re.++ (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.++ (str.to_re " ") (re.++ (str.to_re "A") (re.++ (re.union (str.to_re "B") (str.to_re "L")) (str.to_re " ")))) (re.++ (str.to_re " ") (re.++ (str.to_re "B") (re.++ (re.union (str.to_re "A") (re.union (str.to_re "B") (re.union (str.to_re "D") (re.union (str.to_re "H") (re.union (str.to_re "L") (re.union (str.to_re "N") (re.union (str.to_re "R") (re.union (str.to_re "S") (str.to_re "T"))))))))) (str.to_re " "))))) (re.++ (str.to_re " ") (re.++ (str.to_re "C") (re.++ (re.union (str.to_re "A") (re.union (str.to_re "B") (re.union (str.to_re "F") (re.union (str.to_re "H") (re.union (str.to_re "M") (re.union (str.to_re "O") (re.union (str.to_re "R") (re.union (str.to_re "T") (re.union (str.to_re "V") (str.to_re "W")))))))))) (str.to_re " "))))) (re.++ (str.to_re " ") (re.++ (str.to_re "D") (re.++ (re.union (str.to_re "A") (re.union (str.to_re "D") (re.union (str.to_re "E") (re.union (str.to_re "G") (re.union (str.to_re "H") (re.union (str.to_re "L") (re.union (str.to_re "N") (re.union (str.to_re "T") (str.to_re "Y"))))))))) (str.to_re " "))))) (re.++ (str.to_re " ") (re.++ (str.to_re "E") (re.++ (re.union (str.to_re "H") (re.union (str.to_re "N") (str.to_re "X"))) (str.to_re " "))))) (re.++ (str.to_re " ") (re.++ (str.to_re "F") (re.++ (re.union (str.to_re "K") (str.to_re "Y")) (str.to_re " "))))) (re.++ (str.to_re " ") (re.++ (str.to_re "G") (re.++ (re.union (str.to_re "L") (re.union (str.to_re "U") (str.to_re "Y"))) (str.to_re " "))))) (re.++ (str.to_re " ") (re.++ (str.to_re "H") (re.++ (re.union (str.to_re "A") (re.union (str.to_re "D") (re.union (str.to_re "G") (re.union (str.to_re "P") (re.union (str.to_re "R") (re.union (str.to_re "S") (re.union (str.to_re "U") (str.to_re "X")))))))) (str.to_re " "))))) (re.++ (str.to_re " ") (re.++ (str.to_re "I") (re.++ (re.union (str.to_re "G") (re.union (str.to_re "M") (re.union (str.to_re "P") (str.to_re "V")))) (str.to_re " "))))) (re.++ (str.to_re " ") (re.++ (str.to_re "J") (re.++ (str.to_re "E") (str.to_re " "))))) (re.++ (str.to_re " ") (re.++ (str.to_re "K") (re.++ (re.union (str.to_re "A") (re.union (str.to_re "T") (re.union (str.to_re "W") (str.to_re "Y")))) (str.to_re " "))))) (re.++ (str.to_re " ") (re.++ (str.to_re "L") (re.++ (re.union (str.to_re "A") (re.union (str.to_re "D") (re.union (str.to_re "E") (re.union (str.to_re "L") (re.union (str.to_re "N") (re.union (str.to_re "S") (str.to_re "U"))))))) (str.to_re " "))))) (re.++ (str.to_re " ") (re.++ (str.to_re "M") (re.++ (re.union (str.to_re "E") (re.union (str.to_re "K") (str.to_re "L"))) (str.to_re " "))))) (re.++ (str.to_re " ") (re.++ (str.to_re "N") (re.++ (re.union (str.to_re "E") (re.union (str.to_re "G") (re.union (str.to_re "N") (re.union (str.to_re "P") (re.union (str.to_re "R") (str.to_re "W")))))) (str.to_re " "))))) (re.++ (str.to_re " ") (re.++ (str.to_re "O") (re.++ (re.union (str.to_re "L") (str.to_re "X")) (str.to_re " "))))) (re.++ (str.to_re " ") (re.++ (str.to_re "P") (re.++ (re.union (str.to_re "A") (re.union (str.to_re "E") (re.union (str.to_re "H") (re.union (str.to_re "L") (re.union (str.to_re "O") (str.to_re "R")))))) (str.to_re " "))))) (re.++ (str.to_re " ") (re.++ (str.to_re "R") (re.++ (re.union (str.to_re "G") (re.union (str.to_re "H") (str.to_re "M"))) (str.to_re " "))))) (re.++ (str.to_re " ") (re.++ (str.to_re "S") (re.++ (re.union (str.to_re "A") (re.union (str.to_re "E") (re.union (str.to_re "G") (re.union (str.to_re "K") (re.union (re.range "L" "P") (re.union (str.to_re "R") (re.union (str.to_re "S") (re.union (str.to_re "T") (re.union (str.to_re "W") (str.to_re "Y")))))))))) (str.to_re " "))))) (re.++ (str.to_re " ") (re.++ (str.to_re "T") (re.++ (re.union (str.to_re "A") (re.union (str.to_re "D") (re.union (str.to_re "F") (re.union (str.to_re "N") (re.union (str.to_re "Q") (re.union (str.to_re "R") (re.union (str.to_re "S") (str.to_re "W")))))))) (str.to_re " "))))) (re.++ (str.to_re " ") (re.++ (str.to_re "U") (re.++ (str.to_re "B") (str.to_re " "))))) (re.++ (str.to_re " ") (re.++ (str.to_re "W") (re.++ (re.union (str.to_re "A") (re.union (str.to_re "D") (re.union (str.to_re "F") (re.union (str.to_re "N") (re.union (str.to_re "R") (re.union (str.to_re "S") (str.to_re "V"))))))) (str.to_re " "))))) (re.++ (str.to_re " ") (re.++ (str.to_re "Y") (re.++ (str.to_re "O") (str.to_re " "))))) (re.++ (str.to_re " ") (re.++ (str.to_re "Z") (re.++ (str.to_re "E") (str.to_re " "))))) (re.++ (str.to_re " ") (re.++ (re.range "0" "9") (re.opt (re.range "0" "9"))))))) (str.to_re " ")))) (re.++ (str.to_re " ") (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "W") (re.++ (str.to_re "1") (re.union (re.range "A" "H") (re.union (str.to_re "J") (re.union (str.to_re "K") (re.union (str.to_re "S") (re.union (str.to_re "T") (re.union (str.to_re "U") (re.union (str.to_re "W") (re.range "0" "9"))))))))))) (str.to_re " ")))) (re.++ (str.to_re " ") (re.++ (re.++ (re.union (re.union (re.++ (str.to_re " ") (re.++ (str.to_re " ") (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "W") (re.++ (str.to_re "C") (re.range "1" "2")))) (re.++ (str.to_re " ") (str.to_re " "))))) (re.++ (str.to_re " ") (re.++ (str.to_re " ") (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "E") (re.++ (str.to_re "C") (re.range "1" "4")))) (str.to_re " "))))) (re.++ (str.to_re " ") (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "S") (re.++ (str.to_re "W") (str.to_re "1")))) (re.++ (str.to_re " ") (str.to_re " "))))) (re.++ (str.to_re " ") (re.++ (re.union (str.to_re "A") (re.union (str.to_re "B") (re.union (str.to_re "E") (re.union (str.to_re "H") (re.union (str.to_re "M") (re.union (str.to_re "N") (re.union (str.to_re "P") (re.union (str.to_re "R") (re.union (str.to_re "V") (re.union (str.to_re "W") (re.union (str.to_re "X") (str.to_re "Y")))))))))))) (str.to_re " ")))) (str.to_re " ")))) (re.++ (str.to_re " ") (re.++ (re.opt (re.* (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))))) (re.++ (str.to_re " ") (re.++ (str.to_re " ") (re.++ (re.range "0" "9") ((_ re.loop 2 2) (re.union (str.to_re "A") (re.union (str.to_re "B") (re.union (re.range "D" "H") (re.union (str.to_re "J") (re.union (str.to_re "L") (re.union (str.to_re "N") (re.union (re.range "P" "U") (re.range "W" "Z"))))))))))))))) (str.to_re " ")) (re.++ (str.to_re " ") (re.++ (str.to_re "") (re.++ (str.to_re "G") (re.++ (str.to_re "I") (re.++ (str.to_re "R") (re.++ (re.opt (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ (str.to_re "0") (re.++ (str.to_re "A") (str.to_re "A"))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)