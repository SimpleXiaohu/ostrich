;test regex s/(%05[a-z]{2})(\d)/$1.($2+1)/gie;
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "s") (re.++ (str.to_re "/") (re.++ (re.++ (str.to_re "%") (re.++ (str.to_re "05") ((_ re.loop 2 2) (re.range "a" "z")))) (re.++ (re.range "0" "9") (str.to_re "/"))))) (re.++ (str.to_re "") (re.++ (str.to_re "1") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (re.++ (str.to_re "") (re.++ (re.+ (str.to_re "2")) (str.to_re "1"))) (re.++ (str.to_re "/") (re.++ (str.to_re "g") (re.++ (str.to_re "i") (re.++ (str.to_re "e") (str.to_re ";"))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)