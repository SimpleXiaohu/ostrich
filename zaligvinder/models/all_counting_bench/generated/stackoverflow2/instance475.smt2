;test regex String regex = ".{0,100}(?:(?:\r\n|[\r\n]).{0,100}){0,2}";
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "S") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "g") (re.++ (str.to_re " ") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "g") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (str.to_re " ") (re.++ (str.to_re "=") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{22}") (re.++ ((_ re.loop 0 100) (re.diff re.allchar (str.to_re "\n"))) (re.++ ((_ re.loop 0 2) (re.++ (re.union (re.++ (str.to_re "\u{0d}") (str.to_re "\u{0a}")) (re.union (str.to_re "\u{0d}") (str.to_re "\u{0a}"))) ((_ re.loop 0 100) (re.diff re.allchar (str.to_re "\n"))))) (re.++ (str.to_re "\u{22}") (str.to_re ";"))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)