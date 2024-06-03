;test regex if (Regex.IsMatch("09203041152", "^[0]{1}[9]{1}[1-9]{2}[1-9]{1}[0-9]{6}"))
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "i") (re.++ (str.to_re "f") (re.++ (str.to_re " ") (re.++ (str.to_re "R") (re.++ (str.to_re "e") (re.++ (str.to_re "g") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "I") (re.++ (str.to_re "s") (re.++ (str.to_re "M") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (str.to_re "c") (re.++ (str.to_re "h") (re.++ (re.++ (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "09203041152") (str.to_re "\u{22}"))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (str.to_re "\u{22}")))) (re.++ (str.to_re "") (re.++ ((_ re.loop 1 1) (str.to_re "0")) (re.++ ((_ re.loop 1 1) (str.to_re "9")) (re.++ ((_ re.loop 2 2) (re.range "1" "9")) (re.++ ((_ re.loop 1 1) (re.range "1" "9")) (re.++ ((_ re.loop 6 6) (re.range "0" "9")) (str.to_re "\u{22}"))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)