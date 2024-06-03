(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; /\?[a-f0-9]{4}$/miU
(assert (str.in_re X (re.++ (str.to_re "/?") ((_ re.loop 4 4) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re "/miU\u{0a}"))))
; ("(([a-zA-Z]:)|(\\\\[^/\\:\*\?""<>\|]+(\\[a-zA-Z]\$)?))\\([^/\\:\*\?""<>\|]+\\)*[^/\\:\*\?""<>\|]+(\.[^/\\:\*\?""<>\|]+[^/\\:\*\?""<>\|\s])?")|((([a-zA-Z]:)|(\\\\[^/\\:\*\?""<>\|\s]+(\\[a-zA-Z]\$)?))\\([^/\\:\*\?""<>\|\s]+\\)*[^/\\:\*\?""<>\|\s]+(\.[a-zA-Z0-9]+)?)
(assert (not (str.in_re X (re.union (re.++ (str.to_re "\u{22}") (re.union (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to_re ":")) (re.++ (str.to_re "\u{5c}\u{5c}") (re.+ (re.union (str.to_re "/") (str.to_re "\u{5c}") (str.to_re ":") (str.to_re "*") (str.to_re "?") (str.to_re "\u{22}") (str.to_re "<") (str.to_re ">") (str.to_re "|"))) (re.opt (re.++ (str.to_re "\u{5c}") (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to_re "$"))))) (str.to_re "\u{5c}") (re.* (re.++ (re.+ (re.union (str.to_re "/") (str.to_re "\u{5c}") (str.to_re ":") (str.to_re "*") (str.to_re "?") (str.to_re "\u{22}") (str.to_re "<") (str.to_re ">") (str.to_re "|"))) (str.to_re "\u{5c}"))) (re.+ (re.union (str.to_re "/") (str.to_re "\u{5c}") (str.to_re ":") (str.to_re "*") (str.to_re "?") (str.to_re "\u{22}") (str.to_re "<") (str.to_re ">") (str.to_re "|"))) (re.opt (re.++ (str.to_re ".") (re.+ (re.union (str.to_re "/") (str.to_re "\u{5c}") (str.to_re ":") (str.to_re "*") (str.to_re "?") (str.to_re "\u{22}") (str.to_re "<") (str.to_re ">") (str.to_re "|"))) (re.union (str.to_re "/") (str.to_re "\u{5c}") (str.to_re ":") (str.to_re "*") (str.to_re "?") (str.to_re "\u{22}") (str.to_re "<") (str.to_re ">") (str.to_re "|") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")))) (str.to_re "\u{22}")) (re.++ (str.to_re "\u{0a}") (re.union (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to_re ":")) (re.++ (str.to_re "\u{5c}\u{5c}") (re.+ (re.union (str.to_re "/") (str.to_re "\u{5c}") (str.to_re ":") (str.to_re "*") (str.to_re "?") (str.to_re "\u{22}") (str.to_re "<") (str.to_re ">") (str.to_re "|") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.opt (re.++ (str.to_re "\u{5c}") (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to_re "$"))))) (str.to_re "\u{5c}") (re.* (re.++ (re.+ (re.union (str.to_re "/") (str.to_re "\u{5c}") (str.to_re ":") (str.to_re "*") (str.to_re "?") (str.to_re "\u{22}") (str.to_re "<") (str.to_re ">") (str.to_re "|") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "\u{5c}"))) (re.+ (re.union (str.to_re "/") (str.to_re "\u{5c}") (str.to_re ":") (str.to_re "*") (str.to_re "?") (str.to_re "\u{22}") (str.to_re "<") (str.to_re ">") (str.to_re "|") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.opt (re.++ (str.to_re ".") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))))))))))
; ^[A][Z](.?)[0-9]{4}$
(assert (not (str.in_re X (re.++ (str.to_re "AZ") (re.opt re.allchar) ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "\u{0a}")))))
; (([A-HJ-PRSTW]|A[BDHR]|BCK|B[ADEFHK-ORSUW]|BRD|C[AEFHKLNOSTY]|D[AEHKORS]|F[DEHRY]|G[HKNRUWY]|H[HL]|I[EH]|INS|KY|L[AHIKLNORTY]|M[EHLNRT]|N[ENT]|OB|P[DEHLNTWZ]|R[NORXY]|S[ACDEHMNORSTUY]|SSS|T[HNOT]|UL|W[ADHIKNOTY]|YH)[1-9][0-9]{0,2})|([1-9][0-9]{0,2}([A-HJ-PRSTW]|A[BDHR]|BCK|B[ADEFHK-ORSUW]|BRD|C[AEFHKLNOSTY]|D[AEHKORS]|F[DEHRY]|G[HKNRUWY]|H[HL]|I[EH]|INS|KY|L[AHIKLNORTY]|M[EHLNRT]|N[ENT]|OB|P[DEHLNTWZ]|R[NORXY]|S[ACDEHMNORSTUY]|SSS|T[HNOT]|UL|W[ADHIKNOTY]|YH))
(assert (not (str.in_re X (re.union (re.++ (re.union (re.++ (str.to_re "A") (re.union (str.to_re "B") (str.to_re "D") (str.to_re "H") (str.to_re "R"))) (str.to_re "BCK") (re.++ (str.to_re "B") (re.union (str.to_re "A") (str.to_re "D") (str.to_re "E") (str.to_re "F") (str.to_re "H") (re.range "K" "O") (str.to_re "R") (str.to_re "S") (str.to_re "U") (str.to_re "W"))) (str.to_re "BRD") (re.++ (str.to_re "C") (re.union (str.to_re "A") (str.to_re "E") (str.to_re "F") (str.to_re "H") (str.to_re "K") (str.to_re "L") (str.to_re "N") (str.to_re "O") (str.to_re "S") (str.to_re "T") (str.to_re "Y"))) (re.++ (str.to_re "D") (re.union (str.to_re "A") (str.to_re "E") (str.to_re "H") (str.to_re "K") (str.to_re "O") (str.to_re "R") (str.to_re "S"))) (re.++ (str.to_re "F") (re.union (str.to_re "D") (str.to_re "E") (str.to_re "H") (str.to_re "R") (str.to_re "Y"))) (re.++ (str.to_re "G") (re.union (str.to_re "H") (str.to_re "K") (str.to_re "N") (str.to_re "R") (str.to_re "U") (str.to_re "W") (str.to_re "Y"))) (re.++ (str.to_re "H") (re.union (str.to_re "H") (str.to_re "L"))) (re.++ (str.to_re "I") (re.union (str.to_re "E") (str.to_re "H"))) (str.to_re "INS") (str.to_re "KY") (re.++ (str.to_re "L") (re.union (str.to_re "A") (str.to_re "H") (str.to_re "I") (str.to_re "K") (str.to_re "L") (str.to_re "N") (str.to_re "O") (str.to_re "R") (str.to_re "T") (str.to_re "Y"))) (re.++ (str.to_re "M") (re.union (str.to_re "E") (str.to_re "H") (str.to_re "L") (str.to_re "N") (str.to_re "R") (str.to_re "T"))) (re.++ (str.to_re "N") (re.union (str.to_re "E") (str.to_re "N") (str.to_re "T"))) (str.to_re "OB") (re.++ (str.to_re "P") (re.union (str.to_re "D") (str.to_re "E") (str.to_re "H") (str.to_re "L") (str.to_re "N") (str.to_re "T") (str.to_re "W") (str.to_re "Z"))) (re.++ (str.to_re "R") (re.union (str.to_re "N") (str.to_re "O") (str.to_re "R") (str.to_re "X") (str.to_re "Y"))) (re.++ (str.to_re "S") (re.union (str.to_re "A") (str.to_re "C") (str.to_re "D") (str.to_re "E") (str.to_re "H") (str.to_re "M") (str.to_re "N") (str.to_re "O") (str.to_re "R") (str.to_re "S") (str.to_re "T") (str.to_re "U") (str.to_re "Y"))) (str.to_re "SSS") (re.++ (str.to_re "T") (re.union (str.to_re "H") (str.to_re "N") (str.to_re "O") (str.to_re "T"))) (str.to_re "UL") (re.++ (str.to_re "W") (re.union (str.to_re "A") (str.to_re "D") (str.to_re "H") (str.to_re "I") (str.to_re "K") (str.to_re "N") (str.to_re "O") (str.to_re "T") (str.to_re "Y"))) (str.to_re "YH") (re.range "A" "H") (re.range "J" "P") (str.to_re "R") (str.to_re "S") (str.to_re "T") (str.to_re "W")) (re.range "1" "9") ((_ re.loop 0 2) (re.range "0" "9"))) (re.++ (str.to_re "\u{0a}") (re.range "1" "9") ((_ re.loop 0 2) (re.range "0" "9")) (re.union (re.++ (str.to_re "A") (re.union (str.to_re "B") (str.to_re "D") (str.to_re "H") (str.to_re "R"))) (str.to_re "BCK") (re.++ (str.to_re "B") (re.union (str.to_re "A") (str.to_re "D") (str.to_re "E") (str.to_re "F") (str.to_re "H") (re.range "K" "O") (str.to_re "R") (str.to_re "S") (str.to_re "U") (str.to_re "W"))) (str.to_re "BRD") (re.++ (str.to_re "C") (re.union (str.to_re "A") (str.to_re "E") (str.to_re "F") (str.to_re "H") (str.to_re "K") (str.to_re "L") (str.to_re "N") (str.to_re "O") (str.to_re "S") (str.to_re "T") (str.to_re "Y"))) (re.++ (str.to_re "D") (re.union (str.to_re "A") (str.to_re "E") (str.to_re "H") (str.to_re "K") (str.to_re "O") (str.to_re "R") (str.to_re "S"))) (re.++ (str.to_re "F") (re.union (str.to_re "D") (str.to_re "E") (str.to_re "H") (str.to_re "R") (str.to_re "Y"))) (re.++ (str.to_re "G") (re.union (str.to_re "H") (str.to_re "K") (str.to_re "N") (str.to_re "R") (str.to_re "U") (str.to_re "W") (str.to_re "Y"))) (re.++ (str.to_re "H") (re.union (str.to_re "H") (str.to_re "L"))) (re.++ (str.to_re "I") (re.union (str.to_re "E") (str.to_re "H"))) (str.to_re "INS") (str.to_re "KY") (re.++ (str.to_re "L") (re.union (str.to_re "A") (str.to_re "H") (str.to_re "I") (str.to_re "K") (str.to_re "L") (str.to_re "N") (str.to_re "O") (str.to_re "R") (str.to_re "T") (str.to_re "Y"))) (re.++ (str.to_re "M") (re.union (str.to_re "E") (str.to_re "H") (str.to_re "L") (str.to_re "N") (str.to_re "R") (str.to_re "T"))) (re.++ (str.to_re "N") (re.union (str.to_re "E") (str.to_re "N") (str.to_re "T"))) (str.to_re "OB") (re.++ (str.to_re "P") (re.union (str.to_re "D") (str.to_re "E") (str.to_re "H") (str.to_re "L") (str.to_re "N") (str.to_re "T") (str.to_re "W") (str.to_re "Z"))) (re.++ (str.to_re "R") (re.union (str.to_re "N") (str.to_re "O") (str.to_re "R") (str.to_re "X") (str.to_re "Y"))) (re.++ (str.to_re "S") (re.union (str.to_re "A") (str.to_re "C") (str.to_re "D") (str.to_re "E") (str.to_re "H") (str.to_re "M") (str.to_re "N") (str.to_re "O") (str.to_re "R") (str.to_re "S") (str.to_re "T") (str.to_re "U") (str.to_re "Y"))) (str.to_re "SSS") (re.++ (str.to_re "T") (re.union (str.to_re "H") (str.to_re "N") (str.to_re "O") (str.to_re "T"))) (str.to_re "UL") (re.++ (str.to_re "W") (re.union (str.to_re "A") (str.to_re "D") (str.to_re "H") (str.to_re "I") (str.to_re "K") (str.to_re "N") (str.to_re "O") (str.to_re "T") (str.to_re "Y"))) (str.to_re "YH") (re.range "A" "H") (re.range "J" "P") (str.to_re "R") (str.to_re "S") (str.to_re "T") (str.to_re "W")))))))
(assert (> (str.len X) 10))
(check-sat)
