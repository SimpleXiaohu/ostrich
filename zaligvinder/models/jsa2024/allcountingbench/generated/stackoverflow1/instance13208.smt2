;test regex ^([0-9A-Z]{12})/([^\/]+)$       /cgi-bin/index.cgi?act=download1&id=$1&fname=$2 [L]
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (re.++ (str.to_re "") (re.++ ((_ re.loop 12 12) (re.union (re.range "0" "9") (re.range "A" "Z"))) (re.++ (str.to_re "/") (re.+ (re.diff re.allchar (str.to_re "/")))))) (re.++ (str.to_re "") (re.++ (str.to_re " ") (re.++ (str.to_re " ") (re.++ (str.to_re " ") (re.++ (str.to_re " ") (re.++ (str.to_re " ") (re.++ (str.to_re " ") (re.++ (str.to_re " ") (re.++ (str.to_re "/") (re.++ (str.to_re "c") (re.++ (str.to_re "g") (re.++ (str.to_re "i") (re.++ (str.to_re "-") (re.++ (str.to_re "b") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "/") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "d") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "c") (re.++ (str.to_re "g") (re.++ (re.opt (str.to_re "i")) (re.++ (str.to_re "a") (re.++ (str.to_re "c") (re.++ (str.to_re "t") (re.++ (str.to_re "=") (re.++ (str.to_re "d") (re.++ (str.to_re "o") (re.++ (str.to_re "w") (re.++ (str.to_re "n") (re.++ (str.to_re "l") (re.++ (str.to_re "o") (re.++ (str.to_re "a") (re.++ (str.to_re "d") (re.++ (str.to_re "1") (re.++ (str.to_re "&") (re.++ (str.to_re "i") (re.++ (str.to_re "d") (str.to_re "=")))))))))))))))))))))))))))))))))))))))))))) (re.++ (str.to_re "") (re.++ (str.to_re "1") (re.++ (str.to_re "&") (re.++ (str.to_re "f") (re.++ (str.to_re "n") (re.++ (str.to_re "a") (re.++ (str.to_re "m") (re.++ (str.to_re "e") (str.to_re "=")))))))))) (re.++ (str.to_re "") (re.++ (str.to_re "2") (re.++ (str.to_re " ") (str.to_re "L")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)