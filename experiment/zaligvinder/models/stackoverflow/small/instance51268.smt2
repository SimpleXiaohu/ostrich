;test regex RewriteRule ^/?images/([a-zA-Z]{2})([a-zA-Z]{1})([0-9]+)catalog.jpg$ /images/$1-$2$3.jpg
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (re.++ (re.++ (re.++ (str.to_re "R") (re.++ (str.to_re "e") (re.++ (str.to_re "w") (re.++ (str.to_re "r") (re.++ (str.to_re "i") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re "R") (re.++ (str.to_re "u") (re.++ (str.to_re "l") (re.++ (str.to_re "e") (str.to_re " ")))))))))))) (re.++ (str.to_re "") (re.++ (re.opt (str.to_re "/")) (re.++ (str.to_re "i") (re.++ (str.to_re "m") (re.++ (str.to_re "a") (re.++ (str.to_re "g") (re.++ (str.to_re "e") (re.++ (str.to_re "s") (re.++ (str.to_re "/") (re.++ ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.++ ((_ re.loop 1 1) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.++ (re.+ (re.range "0" "9")) (re.++ (str.to_re "c") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (str.to_re "a") (re.++ (str.to_re "l") (re.++ (str.to_re "o") (re.++ (str.to_re "g") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "j") (re.++ (str.to_re "p") (str.to_re "g")))))))))))))))))))))))) (re.++ (str.to_re "") (re.++ (str.to_re " ") (re.++ (str.to_re "/") (re.++ (str.to_re "i") (re.++ (str.to_re "m") (re.++ (str.to_re "a") (re.++ (str.to_re "g") (re.++ (str.to_re "e") (re.++ (str.to_re "s") (str.to_re "/"))))))))))) (re.++ (str.to_re "") (re.++ (str.to_re "1") (str.to_re "-")))) (re.++ (str.to_re "") (str.to_re "2"))) (re.++ (str.to_re "") (re.++ (str.to_re "3") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "j") (re.++ (str.to_re "p") (str.to_re "g")))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)