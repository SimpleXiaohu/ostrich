;test regex (roundcube.*?httponly){3}
(declare-const X String)
(assert (str.in_re X ((_ re.loop 3 3) (re.++ (str.to_re "r") (re.++ (str.to_re "o") (re.++ (str.to_re "u") (re.++ (str.to_re "n") (re.++ (str.to_re "d") (re.++ (str.to_re "c") (re.++ (str.to_re "u") (re.++ (str.to_re "b") (re.++ (str.to_re "e") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "h") (re.++ (str.to_re "t") (re.++ (str.to_re "t") (re.++ (str.to_re "p") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (re.++ (str.to_re "l") (str.to_re "y")))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)