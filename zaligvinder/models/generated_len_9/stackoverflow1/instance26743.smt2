;test regex RewriteRule ^(.*)/\d{3}-(\d.*)/$ /$1/$2/ [L,R=301]
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (re.++ (re.++ (str.to_re "R") (re.++ (str.to_re "e") (re.++ (str.to_re "w") (re.++ (str.to_re "r") (re.++ (str.to_re "i") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re "R") (re.++ (str.to_re "u") (re.++ (str.to_re "l") (re.++ (str.to_re "e") (str.to_re " ")))))))))))) (re.++ (str.to_re "") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "/") (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.++ (str.to_re "-") (re.++ (re.++ (re.range "0" "9") (re.* (re.diff re.allchar (str.to_re "\n")))) (str.to_re "/")))))))) (re.++ (str.to_re "") (re.++ (str.to_re " ") (str.to_re "/")))) (re.++ (str.to_re "") (re.++ (str.to_re "1") (str.to_re "/")))) (re.++ (str.to_re "") (re.++ (str.to_re "2") (re.++ (str.to_re "/") (re.++ (str.to_re " ") (re.union (str.to_re "L") (re.union (str.to_re ",") (re.union (str.to_re "R") (re.union (str.to_re "=") (str.to_re "301"))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)