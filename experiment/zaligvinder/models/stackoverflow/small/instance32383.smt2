;test regex egrep "N[A-Z]_[0-9]{1,}(\.[1-9])*" input.txt
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "e") (re.++ (str.to_re "g") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "p") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "N") (re.++ (re.range "A" "Z") (re.++ (str.to_re "_") (re.++ (re.++ (re.* (re.range "0" "9")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ (re.* (re.++ (str.to_re ".") (re.range "1" "9"))) (re.++ (str.to_re "\u{22}") (re.++ (str.to_re " ") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "p") (re.++ (str.to_re "u") (re.++ (str.to_re "t") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "t") (re.++ (str.to_re "x") (str.to_re "t")))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)