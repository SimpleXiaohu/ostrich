;test regex ((.*\n){1})Kontr. : FIRMA HANDLOWA TOP-ZOO
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 1 1) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (str.to_re "\u{0a}"))) (re.++ (str.to_re "K") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re " ") (re.++ (str.to_re ":") (re.++ (str.to_re " ") (re.++ (str.to_re "F") (re.++ (str.to_re "I") (re.++ (str.to_re "R") (re.++ (str.to_re "M") (re.++ (str.to_re "A") (re.++ (str.to_re " ") (re.++ (str.to_re "H") (re.++ (str.to_re "A") (re.++ (str.to_re "N") (re.++ (str.to_re "D") (re.++ (str.to_re "L") (re.++ (str.to_re "O") (re.++ (str.to_re "W") (re.++ (str.to_re "A") (re.++ (str.to_re " ") (re.++ (str.to_re "T") (re.++ (str.to_re "O") (re.++ (str.to_re "P") (re.++ (str.to_re "-") (re.++ (str.to_re "Z") (re.++ (str.to_re "O") (str.to_re "O"))))))))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)