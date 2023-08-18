;test regex s.str.extract('(\d)\1{2,}', expand=True)
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "s") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re "a") (re.++ (str.to_re "c") (re.++ (str.to_re "t") (re.++ (re.++ (str.to_re "\u{27}") (re.++ (re.range "0" "9") (re.++ (re.++ (re.* (_ re.reference 1)) ((_ re.loop 2 2) (_ re.reference 1))) (str.to_re "\u{27}")))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (str.to_re "p") (re.++ (str.to_re "a") (re.++ (str.to_re "n") (re.++ (str.to_re "d") (re.++ (str.to_re "=") (re.++ (str.to_re "T") (re.++ (str.to_re "r") (re.++ (str.to_re "u") (str.to_re "e")))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)