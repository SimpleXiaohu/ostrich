;test regex ^(B(A|B|C|J|L|N|R|S|Y)|CA|D(K|S|T)|G(A|L)|H(C|E)|IL|K(A|I|E|K|M|N|S)|L(E|C|M|V)|M(A|I|L|T|Y)|N(I|O|M|R|Z)|P(B|D|E|O|K|N|P|T|U|V)|R(A|K|S|V)|S(A|B|C|E|I|K|L|O|N|P|V)|T(A|C|N|O|R|S|T|V)|V(K|T)|Z(A|C|H|I|M|V))([ ]{0,1})([0-9]{3})([A-Z]{2})$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.++ (str.to_re "B") (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (str.to_re "A") (str.to_re "B")) (str.to_re "C")) (str.to_re "J")) (str.to_re "L")) (str.to_re "N")) (str.to_re "R")) (str.to_re "S")) (str.to_re "Y"))) (re.++ (str.to_re "C") (str.to_re "A"))) (re.++ (str.to_re "D") (re.union (re.union (str.to_re "K") (str.to_re "S")) (str.to_re "T")))) (re.++ (str.to_re "G") (re.union (str.to_re "A") (str.to_re "L")))) (re.++ (str.to_re "H") (re.union (str.to_re "C") (str.to_re "E")))) (re.++ (str.to_re "I") (str.to_re "L"))) (re.++ (str.to_re "K") (re.union (re.union (re.union (re.union (re.union (re.union (str.to_re "A") (str.to_re "I")) (str.to_re "E")) (str.to_re "K")) (str.to_re "M")) (str.to_re "N")) (str.to_re "S")))) (re.++ (str.to_re "L") (re.union (re.union (re.union (str.to_re "E") (str.to_re "C")) (str.to_re "M")) (str.to_re "V")))) (re.++ (str.to_re "M") (re.union (re.union (re.union (re.union (str.to_re "A") (str.to_re "I")) (str.to_re "L")) (str.to_re "T")) (str.to_re "Y")))) (re.++ (str.to_re "N") (re.union (re.union (re.union (re.union (str.to_re "I") (str.to_re "O")) (str.to_re "M")) (str.to_re "R")) (str.to_re "Z")))) (re.++ (str.to_re "P") (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (str.to_re "B") (str.to_re "D")) (str.to_re "E")) (str.to_re "O")) (str.to_re "K")) (str.to_re "N")) (str.to_re "P")) (str.to_re "T")) (str.to_re "U")) (str.to_re "V")))) (re.++ (str.to_re "R") (re.union (re.union (re.union (str.to_re "A") (str.to_re "K")) (str.to_re "S")) (str.to_re "V")))) (re.++ (str.to_re "S") (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (str.to_re "A") (str.to_re "B")) (str.to_re "C")) (str.to_re "E")) (str.to_re "I")) (str.to_re "K")) (str.to_re "L")) (str.to_re "O")) (str.to_re "N")) (str.to_re "P")) (str.to_re "V")))) (re.++ (str.to_re "T") (re.union (re.union (re.union (re.union (re.union (re.union (re.union (str.to_re "A") (str.to_re "C")) (str.to_re "N")) (str.to_re "O")) (str.to_re "R")) (str.to_re "S")) (str.to_re "T")) (str.to_re "V")))) (re.++ (str.to_re "V") (re.union (str.to_re "K") (str.to_re "T")))) (re.++ (str.to_re "Z") (re.union (re.union (re.union (re.union (re.union (str.to_re "A") (str.to_re "C")) (str.to_re "H")) (str.to_re "I")) (str.to_re "M")) (str.to_re "V")))) (re.++ ((_ re.loop 0 1) (str.to_re " ")) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "A" "Z")))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)