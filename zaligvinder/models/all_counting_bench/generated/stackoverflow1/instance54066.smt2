;test regex Regex.IsMatch("SX25536101", "^[S][STWXV]/d{6}[A-Z0-9]{2}$")
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "R") (re.++ (str.to_re "e") (re.++ (str.to_re "g") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "I") (re.++ (str.to_re "s") (re.++ (str.to_re "M") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (str.to_re "c") (re.++ (str.to_re "h") (re.++ (re.++ (re.++ (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "S") (re.++ (str.to_re "X") (re.++ (str.to_re "25536101") (str.to_re "\u{22}"))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (str.to_re "\u{22}")))) (re.++ (str.to_re "") (re.++ (str.to_re "S") (re.++ (re.union (str.to_re "S") (re.union (str.to_re "T") (re.union (str.to_re "W") (re.union (str.to_re "X") (str.to_re "V"))))) (re.++ (str.to_re "/") (re.++ ((_ re.loop 6 6) (str.to_re "d")) ((_ re.loop 2 2) (re.union (re.range "A" "Z") (re.range "0" "9"))))))))) (re.++ (str.to_re "") (str.to_re "\u{22}"))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)