;test regex (?:^[aArRvVcClLeE][a-zA-Z]\d{9}(A(D|E|F|G|I|L|M|N|O|R|S|T|Q|U|W|X|Z)|B(A|B|D|E|F|G|H|I|J|L|M|N|O|R|S|T|V|W|Y|Z)|C(A|C|D|F|G|H|I|K|L|M|N|O|R|U|V|X|Y|Z)|D(E|J|K|M|O|Z)|E(C|E|G|H|R|S|T)|F(I|J|K|M|O|R)|G(A|B|D|E|F|G|H|I|L|M|N|P|Q|R|S|T|U|W|Y)|H(K|M|N|R|T|U)|I(D|E|Q|L|M|N|O|R|S|T)|J(E|M|O|P)|K(E|G|H|I|M|N|P|R|W|Y|Z)|L(A|B|C|I|K|R|S|T|U|V|Y)|M(A|C|D|E|F|G|H|K|L|M|N|O|Q|P|R|S|T|U|V|W|X|Y|Z)|N(A|C|E|F|G|I|L|O|P|R|U|Z)|OM|P(A|E|F|G|H|K|L|M|N|R|S|T|W|Y)|QA|R(E|O|S|U|W)|S(A|B|C|D|E|G|H|I|J|K|L|M|N|O|R|T|V|Y|Z)|T(C|D|F|G|H|J|K|L|M|N|O|R|T|V|W|Z)|U(A|G|M|S|Y|Z)|V(A|C|E|G|I|N|U)|W(F|S)|Y(E|T)|Z(A|M|W)))$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.union (str.to_re "a") (re.union (str.to_re "A") (re.union (str.to_re "r") (re.union (str.to_re "R") (re.union (str.to_re "v") (re.union (str.to_re "V") (re.union (str.to_re "c") (re.union (str.to_re "C") (re.union (str.to_re "l") (re.union (str.to_re "L") (re.union (str.to_re "e") (str.to_re "E")))))))))))) (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.++ ((_ re.loop 9 9) (re.range "0" "9")) (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.++ (str.to_re "A") (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (str.to_re "D") (str.to_re "E")) (str.to_re "F")) (str.to_re "G")) (str.to_re "I")) (str.to_re "L")) (str.to_re "M")) (str.to_re "N")) (str.to_re "O")) (str.to_re "R")) (str.to_re "S")) (str.to_re "T")) (str.to_re "Q")) (str.to_re "U")) (str.to_re "W")) (str.to_re "X")) (str.to_re "Z"))) (re.++ (str.to_re "B") (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (str.to_re "A") (str.to_re "B")) (str.to_re "D")) (str.to_re "E")) (str.to_re "F")) (str.to_re "G")) (str.to_re "H")) (str.to_re "I")) (str.to_re "J")) (str.to_re "L")) (str.to_re "M")) (str.to_re "N")) (str.to_re "O")) (str.to_re "R")) (str.to_re "S")) (str.to_re "T")) (str.to_re "V")) (str.to_re "W")) (str.to_re "Y")) (str.to_re "Z")))) (re.++ (str.to_re "C") (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (str.to_re "A") (str.to_re "C")) (str.to_re "D")) (str.to_re "F")) (str.to_re "G")) (str.to_re "H")) (str.to_re "I")) (str.to_re "K")) (str.to_re "L")) (str.to_re "M")) (str.to_re "N")) (str.to_re "O")) (str.to_re "R")) (str.to_re "U")) (str.to_re "V")) (str.to_re "X")) (str.to_re "Y")) (str.to_re "Z")))) (re.++ (str.to_re "D") (re.union (re.union (re.union (re.union (re.union (str.to_re "E") (str.to_re "J")) (str.to_re "K")) (str.to_re "M")) (str.to_re "O")) (str.to_re "Z")))) (re.++ (str.to_re "E") (re.union (re.union (re.union (re.union (re.union (re.union (str.to_re "C") (str.to_re "E")) (str.to_re "G")) (str.to_re "H")) (str.to_re "R")) (str.to_re "S")) (str.to_re "T")))) (re.++ (str.to_re "F") (re.union (re.union (re.union (re.union (re.union (str.to_re "I") (str.to_re "J")) (str.to_re "K")) (str.to_re "M")) (str.to_re "O")) (str.to_re "R")))) (re.++ (str.to_re "G") (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (str.to_re "A") (str.to_re "B")) (str.to_re "D")) (str.to_re "E")) (str.to_re "F")) (str.to_re "G")) (str.to_re "H")) (str.to_re "I")) (str.to_re "L")) (str.to_re "M")) (str.to_re "N")) (str.to_re "P")) (str.to_re "Q")) (str.to_re "R")) (str.to_re "S")) (str.to_re "T")) (str.to_re "U")) (str.to_re "W")) (str.to_re "Y")))) (re.++ (str.to_re "H") (re.union (re.union (re.union (re.union (re.union (str.to_re "K") (str.to_re "M")) (str.to_re "N")) (str.to_re "R")) (str.to_re "T")) (str.to_re "U")))) (re.++ (str.to_re "I") (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (str.to_re "D") (str.to_re "E")) (str.to_re "Q")) (str.to_re "L")) (str.to_re "M")) (str.to_re "N")) (str.to_re "O")) (str.to_re "R")) (str.to_re "S")) (str.to_re "T")))) (re.++ (str.to_re "J") (re.union (re.union (re.union (str.to_re "E") (str.to_re "M")) (str.to_re "O")) (str.to_re "P")))) (re.++ (str.to_re "K") (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (str.to_re "E") (str.to_re "G")) (str.to_re "H")) (str.to_re "I")) (str.to_re "M")) (str.to_re "N")) (str.to_re "P")) (str.to_re "R")) (str.to_re "W")) (str.to_re "Y")) (str.to_re "Z")))) (re.++ (str.to_re "L") (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (str.to_re "A") (str.to_re "B")) (str.to_re "C")) (str.to_re "I")) (str.to_re "K")) (str.to_re "R")) (str.to_re "S")) (str.to_re "T")) (str.to_re "U")) (str.to_re "V")) (str.to_re "Y")))) (re.++ (str.to_re "M") (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (str.to_re "A") (str.to_re "C")) (str.to_re "D")) (str.to_re "E")) (str.to_re "F")) (str.to_re "G")) (str.to_re "H")) (str.to_re "K")) (str.to_re "L")) (str.to_re "M")) (str.to_re "N")) (str.to_re "O")) (str.to_re "Q")) (str.to_re "P")) (str.to_re "R")) (str.to_re "S")) (str.to_re "T")) (str.to_re "U")) (str.to_re "V")) (str.to_re "W")) (str.to_re "X")) (str.to_re "Y")) (str.to_re "Z")))) (re.++ (str.to_re "N") (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (str.to_re "A") (str.to_re "C")) (str.to_re "E")) (str.to_re "F")) (str.to_re "G")) (str.to_re "I")) (str.to_re "L")) (str.to_re "O")) (str.to_re "P")) (str.to_re "R")) (str.to_re "U")) (str.to_re "Z")))) (re.++ (str.to_re "O") (str.to_re "M"))) (re.++ (str.to_re "P") (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (str.to_re "A") (str.to_re "E")) (str.to_re "F")) (str.to_re "G")) (str.to_re "H")) (str.to_re "K")) (str.to_re "L")) (str.to_re "M")) (str.to_re "N")) (str.to_re "R")) (str.to_re "S")) (str.to_re "T")) (str.to_re "W")) (str.to_re "Y")))) (re.++ (str.to_re "Q") (str.to_re "A"))) (re.++ (str.to_re "R") (re.union (re.union (re.union (re.union (str.to_re "E") (str.to_re "O")) (str.to_re "S")) (str.to_re "U")) (str.to_re "W")))) (re.++ (str.to_re "S") (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (str.to_re "A") (str.to_re "B")) (str.to_re "C")) (str.to_re "D")) (str.to_re "E")) (str.to_re "G")) (str.to_re "H")) (str.to_re "I")) (str.to_re "J")) (str.to_re "K")) (str.to_re "L")) (str.to_re "M")) (str.to_re "N")) (str.to_re "O")) (str.to_re "R")) (str.to_re "T")) (str.to_re "V")) (str.to_re "Y")) (str.to_re "Z")))) (re.++ (str.to_re "T") (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (str.to_re "C") (str.to_re "D")) (str.to_re "F")) (str.to_re "G")) (str.to_re "H")) (str.to_re "J")) (str.to_re "K")) (str.to_re "L")) (str.to_re "M")) (str.to_re "N")) (str.to_re "O")) (str.to_re "R")) (str.to_re "T")) (str.to_re "V")) (str.to_re "W")) (str.to_re "Z")))) (re.++ (str.to_re "U") (re.union (re.union (re.union (re.union (re.union (str.to_re "A") (str.to_re "G")) (str.to_re "M")) (str.to_re "S")) (str.to_re "Y")) (str.to_re "Z")))) (re.++ (str.to_re "V") (re.union (re.union (re.union (re.union (re.union (re.union (str.to_re "A") (str.to_re "C")) (str.to_re "E")) (str.to_re "G")) (str.to_re "I")) (str.to_re "N")) (str.to_re "U")))) (re.++ (str.to_re "W") (re.union (str.to_re "F") (str.to_re "S")))) (re.++ (str.to_re "Y") (re.union (str.to_re "E") (str.to_re "T")))) (re.++ (str.to_re "Z") (re.union (re.union (str.to_re "A") (str.to_re "M")) (str.to_re "W")))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)