;test regex /^[0-9]{1,8}$/.test("333333333") //returns false
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "/") (re.++ (str.to_re "") ((_ re.loop 1 8) (re.range "0" "9")))) (re.++ (str.to_re "") (re.++ (str.to_re "/") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "333333333") (str.to_re "\u{22}"))) (re.++ (str.to_re " ") (re.++ (str.to_re "/") (re.++ (str.to_re "/") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "t") (re.++ (str.to_re "u") (re.++ (str.to_re "r") (re.++ (str.to_re "n") (re.++ (str.to_re "s") (re.++ (str.to_re " ") (re.++ (str.to_re "f") (re.++ (str.to_re "a") (re.++ (str.to_re "l") (re.++ (str.to_re "s") (str.to_re "e")))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)