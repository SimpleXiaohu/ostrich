;test regex .{8,} matches any character (except newline)
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) ((_ re.loop 8 8) (re.diff re.allchar (str.to_re "\n")))) (re.++ (str.to_re " ") (re.++ (str.to_re "m") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (str.to_re "c") (re.++ (str.to_re "h") (re.++ (str.to_re "e") (re.++ (str.to_re "s") (re.++ (str.to_re " ") (re.++ (str.to_re "a") (re.++ (str.to_re "n") (re.++ (str.to_re "y") (re.++ (str.to_re " ") (re.++ (str.to_re "c") (re.++ (str.to_re "h") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (re.++ (str.to_re "a") (re.++ (str.to_re "c") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (re.++ (str.to_re " ") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (str.to_re "c") (re.++ (str.to_re "e") (re.++ (str.to_re "p") (re.++ (str.to_re "t") (re.++ (str.to_re " ") (re.++ (str.to_re "n") (re.++ (str.to_re "e") (re.++ (str.to_re "w") (re.++ (str.to_re "l") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (str.to_re "e"))))))))))))))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)