;test regex Create(\s+)Table(\s+)(\([a-z0-9]+\))(\s+)Columns(\s+)((\(([a-z0-9]+);(INTEGER|DECIMAL|STRING);(\d{1,3});(((YES|NO);){3})([a-z0-9]+)\)\s*?)+)
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "C") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (re.+ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ (str.to_re "T") (re.++ (str.to_re "a") (re.++ (str.to_re "b") (re.++ (str.to_re "l") (re.++ (str.to_re "e") (re.++ (re.+ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ (re.++ (str.to_re "(") (re.++ (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re ")"))) (re.++ (re.+ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ (str.to_re "C") (re.++ (str.to_re "o") (re.++ (str.to_re "l") (re.++ (str.to_re "u") (re.++ (str.to_re "m") (re.++ (str.to_re "n") (re.++ (str.to_re "s") (re.++ (re.+ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.+ (re.++ (str.to_re "(") (re.++ (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (re.++ (str.to_re ";") (re.++ (re.union (re.union (re.++ (str.to_re "I") (re.++ (str.to_re "N") (re.++ (str.to_re "T") (re.++ (str.to_re "E") (re.++ (str.to_re "G") (re.++ (str.to_re "E") (str.to_re "R"))))))) (re.++ (str.to_re "D") (re.++ (str.to_re "E") (re.++ (str.to_re "C") (re.++ (str.to_re "I") (re.++ (str.to_re "M") (re.++ (str.to_re "A") (str.to_re "L")))))))) (re.++ (str.to_re "S") (re.++ (str.to_re "T") (re.++ (str.to_re "R") (re.++ (str.to_re "I") (re.++ (str.to_re "N") (str.to_re "G"))))))) (re.++ (str.to_re ";") (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.++ (str.to_re ";") (re.++ ((_ re.loop 3 3) (re.++ (re.union (re.++ (str.to_re "Y") (re.++ (str.to_re "E") (str.to_re "S"))) (re.++ (str.to_re "N") (str.to_re "O"))) (str.to_re ";"))) (re.++ (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (re.++ (str.to_re ")") (re.* (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))))))))))))))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)