;test regex ^[0-9]{2,3} +[a-zA-Z]+ +(Street|Road)$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ ((_ re.loop 2 3) (re.range "0" "9")) (re.++ (re.+ (str.to_re " ")) (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.++ (re.+ (str.to_re " ")) (re.union (re.++ (str.to_re "S") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "e") (str.to_re "t")))))) (re.++ (str.to_re "R") (re.++ (str.to_re "o") (re.++ (str.to_re "a") (str.to_re "d")))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)