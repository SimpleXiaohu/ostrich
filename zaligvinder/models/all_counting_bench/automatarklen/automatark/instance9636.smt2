(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ^(?-i:A[DEFGILMNOQRSTUWZ]|B[ABDEFGHIJMNORSTVWYZ]|C[ACDFGHIKLMNORSUVXYZ]|D[EJKMOZ]|E[CEGHRST]|F[IJKMOR]|G[ABDEFHILMNPQRSTUWY]|H[KMNRTU]|I[DELNOQRST]|J[MOP]|K[EGHIMNPRWYZ]|L[ABCIKRSTUVY]|M[ACDGHKLMNOPQRSTUVWXYZ]|N[ACEFGILOPRUZ]|O[M]|P[AEFGHKLMNRSTWY]|QA|R[EOUW]|S[ABCDEGHIJKLMNORTVYZ]|T[CDFGHJKLMNORTVWZ]|U[AGMSYZ]|V[ACEGINU]|W[FS]|Y[ET]|Z[AMW])$
(assert (not (str.in_re X (re.++ (re.union (re.++ (str.to_re "A") (re.union (str.to_re "D") (str.to_re "E") (str.to_re "F") (str.to_re "G") (str.to_re "I") (str.to_re "L") (str.to_re "M") (str.to_re "N") (str.to_re "O") (str.to_re "Q") (str.to_re "R") (str.to_re "S") (str.to_re "T") (str.to_re "U") (str.to_re "W") (str.to_re "Z"))) (re.++ (str.to_re "B") (re.union (str.to_re "A") (str.to_re "B") (str.to_re "D") (str.to_re "E") (str.to_re "F") (str.to_re "G") (str.to_re "H") (str.to_re "I") (str.to_re "J") (str.to_re "M") (str.to_re "N") (str.to_re "O") (str.to_re "R") (str.to_re "S") (str.to_re "T") (str.to_re "V") (str.to_re "W") (str.to_re "Y") (str.to_re "Z"))) (re.++ (str.to_re "C") (re.union (str.to_re "A") (str.to_re "C") (str.to_re "D") (str.to_re "F") (str.to_re "G") (str.to_re "H") (str.to_re "I") (str.to_re "K") (str.to_re "L") (str.to_re "M") (str.to_re "N") (str.to_re "O") (str.to_re "R") (str.to_re "S") (str.to_re "U") (str.to_re "V") (str.to_re "X") (str.to_re "Y") (str.to_re "Z"))) (re.++ (str.to_re "D") (re.union (str.to_re "E") (str.to_re "J") (str.to_re "K") (str.to_re "M") (str.to_re "O") (str.to_re "Z"))) (re.++ (str.to_re "E") (re.union (str.to_re "C") (str.to_re "E") (str.to_re "G") (str.to_re "H") (str.to_re "R") (str.to_re "S") (str.to_re "T"))) (re.++ (str.to_re "F") (re.union (str.to_re "I") (str.to_re "J") (str.to_re "K") (str.to_re "M") (str.to_re "O") (str.to_re "R"))) (re.++ (str.to_re "G") (re.union (str.to_re "A") (str.to_re "B") (str.to_re "D") (str.to_re "E") (str.to_re "F") (str.to_re "H") (str.to_re "I") (str.to_re "L") (str.to_re "M") (str.to_re "N") (str.to_re "P") (str.to_re "Q") (str.to_re "R") (str.to_re "S") (str.to_re "T") (str.to_re "U") (str.to_re "W") (str.to_re "Y"))) (re.++ (str.to_re "H") (re.union (str.to_re "K") (str.to_re "M") (str.to_re "N") (str.to_re "R") (str.to_re "T") (str.to_re "U"))) (re.++ (str.to_re "I") (re.union (str.to_re "D") (str.to_re "E") (str.to_re "L") (str.to_re "N") (str.to_re "O") (str.to_re "Q") (str.to_re "R") (str.to_re "S") (str.to_re "T"))) (re.++ (str.to_re "J") (re.union (str.to_re "M") (str.to_re "O") (str.to_re "P"))) (re.++ (str.to_re "K") (re.union (str.to_re "E") (str.to_re "G") (str.to_re "H") (str.to_re "I") (str.to_re "M") (str.to_re "N") (str.to_re "P") (str.to_re "R") (str.to_re "W") (str.to_re "Y") (str.to_re "Z"))) (re.++ (str.to_re "L") (re.union (str.to_re "A") (str.to_re "B") (str.to_re "C") (str.to_re "I") (str.to_re "K") (str.to_re "R") (str.to_re "S") (str.to_re "T") (str.to_re "U") (str.to_re "V") (str.to_re "Y"))) (re.++ (str.to_re "M") (re.union (str.to_re "A") (str.to_re "C") (str.to_re "D") (str.to_re "G") (str.to_re "H") (str.to_re "K") (str.to_re "L") (str.to_re "M") (str.to_re "N") (str.to_re "O") (str.to_re "P") (str.to_re "Q") (str.to_re "R") (str.to_re "S") (str.to_re "T") (str.to_re "U") (str.to_re "V") (str.to_re "W") (str.to_re "X") (str.to_re "Y") (str.to_re "Z"))) (re.++ (str.to_re "N") (re.union (str.to_re "A") (str.to_re "C") (str.to_re "E") (str.to_re "F") (str.to_re "G") (str.to_re "I") (str.to_re "L") (str.to_re "O") (str.to_re "P") (str.to_re "R") (str.to_re "U") (str.to_re "Z"))) (str.to_re "OM") (re.++ (str.to_re "P") (re.union (str.to_re "A") (str.to_re "E") (str.to_re "F") (str.to_re "G") (str.to_re "H") (str.to_re "K") (str.to_re "L") (str.to_re "M") (str.to_re "N") (str.to_re "R") (str.to_re "S") (str.to_re "T") (str.to_re "W") (str.to_re "Y"))) (str.to_re "QA") (re.++ (str.to_re "R") (re.union (str.to_re "E") (str.to_re "O") (str.to_re "U") (str.to_re "W"))) (re.++ (str.to_re "S") (re.union (str.to_re "A") (str.to_re "B") (str.to_re "C") (str.to_re "D") (str.to_re "E") (str.to_re "G") (str.to_re "H") (str.to_re "I") (str.to_re "J") (str.to_re "K") (str.to_re "L") (str.to_re "M") (str.to_re "N") (str.to_re "O") (str.to_re "R") (str.to_re "T") (str.to_re "V") (str.to_re "Y") (str.to_re "Z"))) (re.++ (str.to_re "T") (re.union (str.to_re "C") (str.to_re "D") (str.to_re "F") (str.to_re "G") (str.to_re "H") (str.to_re "J") (str.to_re "K") (str.to_re "L") (str.to_re "M") (str.to_re "N") (str.to_re "O") (str.to_re "R") (str.to_re "T") (str.to_re "V") (str.to_re "W") (str.to_re "Z"))) (re.++ (str.to_re "U") (re.union (str.to_re "A") (str.to_re "G") (str.to_re "M") (str.to_re "S") (str.to_re "Y") (str.to_re "Z"))) (re.++ (str.to_re "V") (re.union (str.to_re "A") (str.to_re "C") (str.to_re "E") (str.to_re "G") (str.to_re "I") (str.to_re "N") (str.to_re "U"))) (re.++ (str.to_re "W") (re.union (str.to_re "F") (str.to_re "S"))) (re.++ (str.to_re "Y") (re.union (str.to_re "E") (str.to_re "T"))) (re.++ (str.to_re "Z") (re.union (str.to_re "A") (str.to_re "M") (str.to_re "W")))) (str.to_re "\u{0a}")))))
; \d[\d\,\.]+
(assert (not (str.in_re X (re.++ (re.range "0" "9") (re.+ (re.union (re.range "0" "9") (str.to_re ",") (str.to_re "."))) (str.to_re "\u{0a}")))))
; (((0[13578]|10|12)([-./])(0[1-9]|[12][0-9]|3[01])([-./])(\d{4}))|((0[469]|11)([-./])([0][1-9]|[12][0-9]|30)([-./])(\d{4}))|((2)([-./])(0[1-9]|1[0-9]|2[0-8])([-./])(\d{4}))|((2)(\.|-|\/)(29)([-./])([02468][048]00))|((2)([-./])(29)([-./])([13579][26]00))|((2)([-./])(29)([-./])([0-9][0-9][0][48]))|((2)([-./])(29)([-./])([0-9][0-9][2468][048]))|((2)([-./])(29)([-./])([0-9][0-9][13579][26])))
(assert (str.in_re X (re.++ (re.union (re.++ (re.union (re.++ (str.to_re "0") (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "8"))) (str.to_re "10") (str.to_re "12")) (re.union (str.to_re "-") (str.to_re ".") (str.to_re "/")) (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")) (re.++ (str.to_re "3") (re.union (str.to_re "0") (str.to_re "1")))) (re.union (str.to_re "-") (str.to_re ".") (str.to_re "/")) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (re.union (re.++ (str.to_re "0") (re.union (str.to_re "4") (str.to_re "6") (str.to_re "9"))) (str.to_re "11")) (re.union (str.to_re "-") (str.to_re ".") (str.to_re "/")) (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")) (str.to_re "30")) (re.union (str.to_re "-") (str.to_re ".") (str.to_re "/")) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (str.to_re "2") (re.union (str.to_re "-") (str.to_re ".") (str.to_re "/")) (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "8"))) (re.union (str.to_re "-") (str.to_re ".") (str.to_re "/")) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (str.to_re "2") (re.union (str.to_re ".") (str.to_re "-") (str.to_re "/")) (str.to_re "29") (re.union (str.to_re "-") (str.to_re ".") (str.to_re "/")) (re.union (str.to_re "0") (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8")) (str.to_re "00")) (re.++ (str.to_re "2") (re.union (str.to_re "-") (str.to_re ".") (str.to_re "/")) (str.to_re "29") (re.union (str.to_re "-") (str.to_re ".") (str.to_re "/")) (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "9")) (re.union (str.to_re "2") (str.to_re "6")) (str.to_re "00")) (re.++ (str.to_re "2") (re.union (str.to_re "-") (str.to_re ".") (str.to_re "/")) (str.to_re "29") (re.union (str.to_re "-") (str.to_re ".") (str.to_re "/")) (re.range "0" "9") (re.range "0" "9") (str.to_re "0") (re.union (str.to_re "4") (str.to_re "8"))) (re.++ (str.to_re "2") (re.union (str.to_re "-") (str.to_re ".") (str.to_re "/")) (str.to_re "29") (re.union (str.to_re "-") (str.to_re ".") (str.to_re "/")) (re.range "0" "9") (re.range "0" "9") (re.union (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (str.to_re "2") (re.union (str.to_re "-") (str.to_re ".") (str.to_re "/")) (str.to_re "29") (re.union (str.to_re "-") (str.to_re ".") (str.to_re "/")) (re.range "0" "9") (re.range "0" "9") (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "9")) (re.union (str.to_re "2") (str.to_re "6")))) (str.to_re "\u{0a}"))))
(assert (> (str.len X) 10))
(check-sat)
