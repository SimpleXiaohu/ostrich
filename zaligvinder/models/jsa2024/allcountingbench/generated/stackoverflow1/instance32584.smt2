;test regex String regex = "^((0|255)\\.){3}([0-9]|[1-9][0-9]|[1-2][0-5][0-5])$";
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (str.to_re "S") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "g") (re.++ (str.to_re " ") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "g") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (str.to_re " ") (re.++ (str.to_re "=") (re.++ (str.to_re " ") (str.to_re "\u{22}")))))))))))))))) (re.++ (str.to_re "") (re.++ ((_ re.loop 3 3) (re.++ (re.union (str.to_re "0") (str.to_re "255")) (re.++ (str.to_re "\\") (re.diff re.allchar (str.to_re "\n"))))) (re.union (re.union (re.range "0" "9") (re.++ (re.range "1" "9") (re.range "0" "9"))) (re.++ (re.range "1" "2") (re.++ (re.range "0" "5") (re.range "0" "5"))))))) (re.++ (str.to_re "") (re.++ (str.to_re "\u{22}") (str.to_re ";"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)