;test regex regex = "r(Tick[2-9]{1,}(.*)TO_BE_MATCHED)"
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "g") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (str.to_re " ") (re.++ (str.to_re "=") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "r") (re.++ (re.++ (str.to_re "T") (re.++ (str.to_re "i") (re.++ (str.to_re "c") (re.++ (str.to_re "k") (re.++ (re.++ (re.* (re.range "2" "9")) ((_ re.loop 1 1) (re.range "2" "9"))) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "T") (re.++ (str.to_re "O") (re.++ (str.to_re "_") (re.++ (str.to_re "B") (re.++ (str.to_re "E") (re.++ (str.to_re "_") (re.++ (str.to_re "M") (re.++ (str.to_re "A") (re.++ (str.to_re "T") (re.++ (str.to_re "C") (re.++ (str.to_re "H") (re.++ (str.to_re "E") (str.to_re "D"))))))))))))))))))) (str.to_re "\u{22}"))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)