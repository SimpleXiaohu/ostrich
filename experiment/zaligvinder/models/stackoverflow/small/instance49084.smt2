;test regex String regex = "^[0-9a-z]+@([0-9a-z]+[.])+[0-9a-z]{2,4}$";
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (str.to_re "S") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "g") (re.++ (str.to_re " ") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "g") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (str.to_re " ") (re.++ (str.to_re "=") (re.++ (str.to_re " ") (str.to_re "\u{22}")))))))))))))))) (re.++ (str.to_re "") (re.++ (re.+ (re.union (re.range "0" "9") (re.range "a" "z"))) (re.++ (str.to_re "@") (re.++ (re.+ (re.++ (re.+ (re.union (re.range "0" "9") (re.range "a" "z"))) (str.to_re "."))) ((_ re.loop 2 4) (re.union (re.range "0" "9") (re.range "a" "z")))))))) (re.++ (str.to_re "") (re.++ (str.to_re "\u{22}") (str.to_re ";"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)