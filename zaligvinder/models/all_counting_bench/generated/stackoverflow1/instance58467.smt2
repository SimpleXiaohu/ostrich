;test regex <TextBox wpfApplication2:Masking.Mask="^([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])$"/>
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (str.to_re "<") (re.++ (str.to_re "T") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (str.to_re "t") (re.++ (str.to_re "B") (re.++ (str.to_re "o") (re.++ (str.to_re "x") (re.++ (str.to_re " ") (re.++ (str.to_re "w") (re.++ (str.to_re "p") (re.++ (str.to_re "f") (re.++ (str.to_re "A") (re.++ (str.to_re "p") (re.++ (str.to_re "p") (re.++ (str.to_re "l") (re.++ (str.to_re "i") (re.++ (str.to_re "c") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (str.to_re "i") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (re.++ (str.to_re "2") (re.++ (str.to_re ":") (re.++ (str.to_re "M") (re.++ (str.to_re "a") (re.++ (str.to_re "s") (re.++ (str.to_re "k") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "g") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "M") (re.++ (str.to_re "a") (re.++ (str.to_re "s") (re.++ (str.to_re "k") (re.++ (str.to_re "=") (str.to_re "\u{22}"))))))))))))))))))))))))))))))))))))))) (re.++ (str.to_re "") (re.union (re.union (re.union (re.union (re.range "0" "9") (re.++ (re.range "1" "9") (re.range "0" "9"))) (re.++ (str.to_re "1") ((_ re.loop 2 2) (re.range "0" "9")))) (re.++ (str.to_re "2") (re.++ (re.range "0" "4") (re.range "0" "9")))) (re.++ (str.to_re "25") (re.range "0" "5"))))) (re.++ (str.to_re "") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "/") (str.to_re ">")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)