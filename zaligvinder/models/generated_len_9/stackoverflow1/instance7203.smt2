;test regex !(?:^|\.)(.{20,})' . $string . '(.{20,})\.!
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "!") (re.++ (re.union (str.to_re "") (str.to_re ".")) (re.++ (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) ((_ re.loop 20 20) (re.diff re.allchar (str.to_re "\n")))) (re.++ (str.to_re "\u{27}") (re.++ (str.to_re " ") (re.++ (re.diff re.allchar (str.to_re "\n")) (str.to_re " "))))))) (re.++ (str.to_re "") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "g") (re.++ (str.to_re " ") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re " ") (re.++ (str.to_re "\u{27}") (re.++ (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) ((_ re.loop 20 20) (re.diff re.allchar (str.to_re "\n")))) (re.++ (str.to_re ".") (str.to_re "!")))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)