;test regex Regex.Replace(s, "(\r?\n){2,}|\r?\n", "$1")
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "R") (re.++ (str.to_re "e") (re.++ (str.to_re "g") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "R") (re.++ (str.to_re "e") (re.++ (str.to_re "p") (re.++ (str.to_re "l") (re.++ (str.to_re "a") (re.++ (str.to_re "c") (re.++ (str.to_re "e") (re.union (re.++ (str.to_re "s") (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{22}") (re.++ (re.* (re.++ (re.opt (str.to_re "\u{0d}")) (str.to_re "\u{0a}"))) ((_ re.loop 2 2) (re.++ (re.opt (str.to_re "\u{0d}")) (str.to_re "\u{0a}")))))))) (re.++ (re.++ (re.++ (re.opt (str.to_re "\u{0d}")) (re.++ (str.to_re "\u{0a}") (str.to_re "\u{22}"))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (str.to_re "\u{22}")))) (re.++ (str.to_re "") (re.++ (str.to_re "1") (str.to_re "\u{22}"))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)