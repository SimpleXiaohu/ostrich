;test regex String ex = "\\d{3}-\\d{8} / \\d{4}|\\(\\d{3}\\) \\d{8}|...
(declare-const X String)
(assert (str.in_re X (re.union (re.union (re.++ (str.to_re "S") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "g") (re.++ (str.to_re " ") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (str.to_re " ") (re.++ (str.to_re "=") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "\\") (re.++ ((_ re.loop 3 3) (str.to_re "d")) (re.++ (str.to_re "-") (re.++ (str.to_re "\\") (re.++ ((_ re.loop 8 8) (str.to_re "d")) (re.++ (str.to_re " ") (re.++ (str.to_re "/") (re.++ (str.to_re " ") (re.++ (str.to_re "\\") ((_ re.loop 4 4) (str.to_re "d")))))))))))))))))))))))) (re.++ (str.to_re "\\") (re.++ (re.++ (str.to_re "\\") (re.++ ((_ re.loop 3 3) (str.to_re "d")) (str.to_re "\\"))) (re.++ (str.to_re " ") (re.++ (str.to_re "\\") ((_ re.loop 8 8) (str.to_re "d"))))))) (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (re.diff re.allchar (str.to_re "\n")) (re.diff re.allchar (str.to_re "\n")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)