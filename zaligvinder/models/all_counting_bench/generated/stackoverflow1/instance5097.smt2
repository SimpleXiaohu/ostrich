;test regex $pattern = '#^(?:[a-z]{2}/)?[a-z]+/(.+)/$#i';
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "p") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (re.++ (str.to_re "n") (re.++ (str.to_re " ") (re.++ (str.to_re "=") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{27}") (str.to_re "#"))))))))))))) (re.++ (str.to_re "") (re.++ (re.opt (re.++ ((_ re.loop 2 2) (re.range "a" "z")) (str.to_re "/"))) (re.++ (re.+ (re.range "a" "z")) (re.++ (str.to_re "/") (re.++ (re.+ (re.diff re.allchar (str.to_re "\n"))) (str.to_re "/"))))))) (re.++ (str.to_re "") (re.++ (str.to_re "#") (re.++ (str.to_re "i") (re.++ (str.to_re "\u{27}") (str.to_re ";"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)