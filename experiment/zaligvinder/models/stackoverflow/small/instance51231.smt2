;test regex RedirectMatch 301 ^/([a-z]{2})/(.*)$ /$2?lang=$1
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (re.++ (re.++ (str.to_re "R") (re.++ (str.to_re "e") (re.++ (str.to_re "d") (re.++ (str.to_re "i") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "c") (re.++ (str.to_re "t") (re.++ (str.to_re "M") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (str.to_re "c") (re.++ (str.to_re "h") (re.++ (str.to_re " ") (re.++ (str.to_re "301") (str.to_re " ")))))))))))))))) (re.++ (str.to_re "") (re.++ (str.to_re "/") (re.++ ((_ re.loop 2 2) (re.range "a" "z")) (re.++ (str.to_re "/") (re.* (re.diff re.allchar (str.to_re "\n")))))))) (re.++ (str.to_re "") (re.++ (str.to_re " ") (str.to_re "/")))) (re.++ (str.to_re "") (re.++ (re.opt (str.to_re "2")) (re.++ (str.to_re "l") (re.++ (str.to_re "a") (re.++ (str.to_re "n") (re.++ (str.to_re "g") (str.to_re "=")))))))) (re.++ (str.to_re "") (str.to_re "1")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)