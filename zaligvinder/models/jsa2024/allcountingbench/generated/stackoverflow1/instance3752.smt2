;test regex System.out.println("\\w{3}-\\d{3}");
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "S") (re.++ (str.to_re "y") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re "m") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "o") (re.++ (str.to_re "u") (re.++ (str.to_re "t") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "p") (re.++ (str.to_re "r") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "t") (re.++ (str.to_re "l") (re.++ (str.to_re "n") (re.++ (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "\\") (re.++ ((_ re.loop 3 3) (str.to_re "w")) (re.++ (str.to_re "-") (re.++ (str.to_re "\\") (re.++ ((_ re.loop 3 3) (str.to_re "d")) (str.to_re "\u{22}"))))))) (str.to_re ";"))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)