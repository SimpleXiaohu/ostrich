;test regex RewriteRule ^(ser|mov)/(?:(\w[\w_]*\w)/(?:(\d+)/(?:(\d+)/(\w{0,10})?)?)?)?$ _dispatch.php?type=$1&sn=$2&s=$3&ep=$4&ver=$5 [L]
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (re.++ (re.++ (re.++ (re.++ (re.++ (str.to_re "R") (re.++ (str.to_re "e") (re.++ (str.to_re "w") (re.++ (str.to_re "r") (re.++ (str.to_re "i") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re "R") (re.++ (str.to_re "u") (re.++ (str.to_re "l") (re.++ (str.to_re "e") (str.to_re " ")))))))))))) (re.++ (str.to_re "") (re.++ (re.union (re.++ (str.to_re "s") (re.++ (str.to_re "e") (str.to_re "r"))) (re.++ (str.to_re "m") (re.++ (str.to_re "o") (str.to_re "v")))) (re.++ (str.to_re "/") (re.opt (re.++ (re.++ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))) (re.++ (re.* (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))) (str.to_re "_"))) (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))))) (re.++ (str.to_re "/") (re.opt (re.++ (re.+ (re.range "0" "9")) (re.++ (str.to_re "/") (re.opt (re.++ (re.+ (re.range "0" "9")) (re.++ (str.to_re "/") (re.opt ((_ re.loop 0 10) (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))))))))))))))))) (re.++ (str.to_re "") (re.++ (str.to_re " ") (re.++ (str.to_re "_") (re.++ (str.to_re "d") (re.++ (str.to_re "i") (re.++ (str.to_re "s") (re.++ (str.to_re "p") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (str.to_re "c") (re.++ (str.to_re "h") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "p") (re.++ (str.to_re "h") (re.++ (re.opt (str.to_re "p")) (re.++ (str.to_re "t") (re.++ (str.to_re "y") (re.++ (str.to_re "p") (re.++ (str.to_re "e") (str.to_re "="))))))))))))))))))))) (re.++ (str.to_re "") (re.++ (str.to_re "1") (re.++ (str.to_re "&") (re.++ (str.to_re "s") (re.++ (str.to_re "n") (str.to_re "="))))))) (re.++ (str.to_re "") (re.++ (str.to_re "2") (re.++ (str.to_re "&") (re.++ (str.to_re "s") (str.to_re "=")))))) (re.++ (str.to_re "") (re.++ (str.to_re "3") (re.++ (str.to_re "&") (re.++ (str.to_re "e") (re.++ (str.to_re "p") (str.to_re "="))))))) (re.++ (str.to_re "") (re.++ (str.to_re "4") (re.++ (str.to_re "&") (re.++ (str.to_re "v") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (str.to_re "=")))))))) (re.++ (str.to_re "") (re.++ (str.to_re "5") (re.++ (str.to_re " ") (str.to_re "L")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)