;test regex regex cregex("Cart #([0-9]+)\n(([0-9a-fA-F]{3}+,)+[0-9a-fA-F]{3}+)\n");
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "g") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (str.to_re " ") (re.++ (str.to_re "c") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "g") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "C") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (re.++ (str.to_re "t") (re.++ (str.to_re " ") (re.++ (str.to_re "#") (re.++ (re.+ (re.range "0" "9")) (re.++ (str.to_re "\u{0a}") (re.++ (re.++ (re.+ (re.++ (re.+ ((_ re.loop 3 3) (re.union (re.range "0" "9") (re.union (re.range "a" "f") (re.range "A" "F"))))) (str.to_re ","))) (re.+ ((_ re.loop 3 3) (re.union (re.range "0" "9") (re.union (re.range "a" "f") (re.range "A" "F")))))) (re.++ (str.to_re "\u{0a}") (str.to_re "\u{22}")))))))))))) (str.to_re ";"))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)