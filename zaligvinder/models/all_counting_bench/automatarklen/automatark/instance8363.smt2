(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; /filename=[a-z]+\.jat/
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.+ (re.range "a" "z")) (str.to_re ".jat/\u{0a}"))))
; [\d+]{10}\@[\w]+\.?[\w]+?\.?[\w]+?\.?[\w+]{2,4}/i
(assert (str.in_re X (re.++ ((_ re.loop 10 10) (re.union (re.range "0" "9") (str.to_re "+"))) (str.to_re "@") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.opt (str.to_re ".")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.opt (str.to_re ".")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.opt (str.to_re ".")) ((_ re.loop 2 4) (re.union (str.to_re "+") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "/i\u{0a}"))))
; (a|b|c).(a.b)*.b+.c
(assert (str.in_re X (re.++ (re.union (str.to_re "a") (str.to_re "b") (str.to_re "c")) re.allchar (re.* (re.++ (str.to_re "a") re.allchar (str.to_re "b"))) re.allchar (re.+ (str.to_re "b")) re.allchar (str.to_re "c\u{0a}"))))
; X-Mailer\u{3a}+\x2Fcbn\x2FearchSchwindler
(assert (not (str.in_re X (re.++ (str.to_re "X-Mailer") (re.+ (str.to_re ":")) (str.to_re "/cbn/earchSchwindler\u{0a}")))))
; ^(A(D|E|F|G|I|L|M|N|O|R|S|T|Q|U|W|X|Z)|B(A|B|D|E|F|G|H|I|J|L|M|N|O|R|S|T|V|W|Y|Z)|C(A|C|D|F|G|H|I|K|L|M|N|O|R|U|V|X|Y|Z)|D(E|J|K|M|O|Z)|E(C|E|G|H|R|S|T)|F(I|J|K|M|O|R)|G(A|B|D|E|F|G|H|I|L|M|N|P|Q|R|S|T|U|W|Y)|H(K|M|N|R|T|U)|I(D|E|Q|L|M|N|O|R|S|T)|J(E|M|O|P)|K(E|G|H|I|M|N|P|R|W|Y|Z)|L(A|B|C|I|K|R|S|T|U|V|Y)|M(A|C|D|E|F|G|H|K|L|M|N|O|Q|P|R|S|T|U|V|W|X|Y|Z)|N(A|C|E|F|G|I|L|O|P|R|U|Z)|OM|P(A|E|F|G|H|K|L|M|N|R|S|T|W|Y)|QA|R(E|O|S|U|W)|S(A|B|C|D|E|G|H|I|J|K|L|M|N|O|R|T|V|Y|Z)|T(C|D|F|G|H|J|K|L|M|N|O|R|T|V|W|Z)|U(A|G|M|S|Y|Z)|V(A|C|E|G|I|N|U)|W(F|S)|Y(E|T)|Z(A|M|W))$
(assert (str.in_re X (re.++ (re.union (re.++ (str.to_re "A") (re.union (str.to_re "D") (str.to_re "E") (str.to_re "F") (str.to_re "G") (str.to_re "I") (str.to_re "L") (str.to_re "M") (str.to_re "N") (str.to_re "O") (str.to_re "R") (str.to_re "S") (str.to_re "T") (str.to_re "Q") (str.to_re "U") (str.to_re "W") (str.to_re "X") (str.to_re "Z"))) (re.++ (str.to_re "B") (re.union (str.to_re "A") (str.to_re "B") (str.to_re "D") (str.to_re "E") (str.to_re "F") (str.to_re "G") (str.to_re "H") (str.to_re "I") (str.to_re "J") (str.to_re "L") (str.to_re "M") (str.to_re "N") (str.to_re "O") (str.to_re "R") (str.to_re "S") (str.to_re "T") (str.to_re "V") (str.to_re "W") (str.to_re "Y") (str.to_re "Z"))) (re.++ (str.to_re "C") (re.union (str.to_re "A") (str.to_re "C") (str.to_re "D") (str.to_re "F") (str.to_re "G") (str.to_re "H") (str.to_re "I") (str.to_re "K") (str.to_re "L") (str.to_re "M") (str.to_re "N") (str.to_re "O") (str.to_re "R") (str.to_re "U") (str.to_re "V") (str.to_re "X") (str.to_re "Y") (str.to_re "Z"))) (re.++ (str.to_re "D") (re.union (str.to_re "E") (str.to_re "J") (str.to_re "K") (str.to_re "M") (str.to_re "O") (str.to_re "Z"))) (re.++ (str.to_re "E") (re.union (str.to_re "C") (str.to_re "E") (str.to_re "G") (str.to_re "H") (str.to_re "R") (str.to_re "S") (str.to_re "T"))) (re.++ (str.to_re "F") (re.union (str.to_re "I") (str.to_re "J") (str.to_re "K") (str.to_re "M") (str.to_re "O") (str.to_re "R"))) (re.++ (str.to_re "G") (re.union (str.to_re "A") (str.to_re "B") (str.to_re "D") (str.to_re "E") (str.to_re "F") (str.to_re "G") (str.to_re "H") (str.to_re "I") (str.to_re "L") (str.to_re "M") (str.to_re "N") (str.to_re "P") (str.to_re "Q") (str.to_re "R") (str.to_re "S") (str.to_re "T") (str.to_re "U") (str.to_re "W") (str.to_re "Y"))) (re.++ (str.to_re "H") (re.union (str.to_re "K") (str.to_re "M") (str.to_re "N") (str.to_re "R") (str.to_re "T") (str.to_re "U"))) (re.++ (str.to_re "I") (re.union (str.to_re "D") (str.to_re "E") (str.to_re "Q") (str.to_re "L") (str.to_re "M") (str.to_re "N") (str.to_re "O") (str.to_re "R") (str.to_re "S") (str.to_re "T"))) (re.++ (str.to_re "J") (re.union (str.to_re "E") (str.to_re "M") (str.to_re "O") (str.to_re "P"))) (re.++ (str.to_re "K") (re.union (str.to_re "E") (str.to_re "G") (str.to_re "H") (str.to_re "I") (str.to_re "M") (str.to_re "N") (str.to_re "P") (str.to_re "R") (str.to_re "W") (str.to_re "Y") (str.to_re "Z"))) (re.++ (str.to_re "L") (re.union (str.to_re "A") (str.to_re "B") (str.to_re "C") (str.to_re "I") (str.to_re "K") (str.to_re "R") (str.to_re "S") (str.to_re "T") (str.to_re "U") (str.to_re "V") (str.to_re "Y"))) (re.++ (str.to_re "M") (re.union (str.to_re "A") (str.to_re "C") (str.to_re "D") (str.to_re "E") (str.to_re "F") (str.to_re "G") (str.to_re "H") (str.to_re "K") (str.to_re "L") (str.to_re "M") (str.to_re "N") (str.to_re "O") (str.to_re "Q") (str.to_re "P") (str.to_re "R") (str.to_re "S") (str.to_re "T") (str.to_re "U") (str.to_re "V") (str.to_re "W") (str.to_re "X") (str.to_re "Y") (str.to_re "Z"))) (re.++ (str.to_re "N") (re.union (str.to_re "A") (str.to_re "C") (str.to_re "E") (str.to_re "F") (str.to_re "G") (str.to_re "I") (str.to_re "L") (str.to_re "O") (str.to_re "P") (str.to_re "R") (str.to_re "U") (str.to_re "Z"))) (str.to_re "OM") (re.++ (str.to_re "P") (re.union (str.to_re "A") (str.to_re "E") (str.to_re "F") (str.to_re "G") (str.to_re "H") (str.to_re "K") (str.to_re "L") (str.to_re "M") (str.to_re "N") (str.to_re "R") (str.to_re "S") (str.to_re "T") (str.to_re "W") (str.to_re "Y"))) (str.to_re "QA") (re.++ (str.to_re "R") (re.union (str.to_re "E") (str.to_re "O") (str.to_re "S") (str.to_re "U") (str.to_re "W"))) (re.++ (str.to_re "S") (re.union (str.to_re "A") (str.to_re "B") (str.to_re "C") (str.to_re "D") (str.to_re "E") (str.to_re "G") (str.to_re "H") (str.to_re "I") (str.to_re "J") (str.to_re "K") (str.to_re "L") (str.to_re "M") (str.to_re "N") (str.to_re "O") (str.to_re "R") (str.to_re "T") (str.to_re "V") (str.to_re "Y") (str.to_re "Z"))) (re.++ (str.to_re "T") (re.union (str.to_re "C") (str.to_re "D") (str.to_re "F") (str.to_re "G") (str.to_re "H") (str.to_re "J") (str.to_re "K") (str.to_re "L") (str.to_re "M") (str.to_re "N") (str.to_re "O") (str.to_re "R") (str.to_re "T") (str.to_re "V") (str.to_re "W") (str.to_re "Z"))) (re.++ (str.to_re "U") (re.union (str.to_re "A") (str.to_re "G") (str.to_re "M") (str.to_re "S") (str.to_re "Y") (str.to_re "Z"))) (re.++ (str.to_re "V") (re.union (str.to_re "A") (str.to_re "C") (str.to_re "E") (str.to_re "G") (str.to_re "I") (str.to_re "N") (str.to_re "U"))) (re.++ (str.to_re "W") (re.union (str.to_re "F") (str.to_re "S"))) (re.++ (str.to_re "Y") (re.union (str.to_re "E") (str.to_re "T"))) (re.++ (str.to_re "Z") (re.union (str.to_re "A") (str.to_re "M") (str.to_re "W")))) (str.to_re "\u{0a}"))))
(assert (> (str.len X) 10))
(check-sat)
