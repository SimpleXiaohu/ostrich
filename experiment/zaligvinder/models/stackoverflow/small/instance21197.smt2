;test regex ($nems) = /.*? (\d{5}) (?: \d{2} )?/x;  # /x allows spaces inside
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "n") (re.++ (str.to_re "e") (re.++ (str.to_re "m") (str.to_re "s"))))) (re.++ (str.to_re " ") (re.++ (str.to_re "=") (re.++ (str.to_re " ") (re.++ (str.to_re "/") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re " ") (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (re.++ (str.to_re " ") (re.++ (re.opt (re.++ (str.to_re " ") (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re " ")))) (re.++ (str.to_re "/") (re.++ (str.to_re "x") (re.++ (str.to_re ";") (re.++ (str.to_re " ") (re.++ (str.to_re " ") (re.++ (str.to_re "#") (re.++ (str.to_re " ") (re.++ (str.to_re "/") (re.++ (str.to_re "x") (re.++ (str.to_re " ") (re.++ (str.to_re "a") (re.++ (str.to_re "l") (re.++ (str.to_re "l") (re.++ (str.to_re "o") (re.++ (str.to_re "w") (re.++ (str.to_re "s") (re.++ (str.to_re " ") (re.++ (str.to_re "s") (re.++ (str.to_re "p") (re.++ (str.to_re "a") (re.++ (str.to_re "c") (re.++ (str.to_re "e") (re.++ (str.to_re "s") (re.++ (str.to_re " ") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "s") (re.++ (str.to_re "i") (re.++ (str.to_re "d") (str.to_re "e"))))))))))))))))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)