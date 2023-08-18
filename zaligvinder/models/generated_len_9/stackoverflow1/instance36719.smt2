;test regex (^.{3}).|. and replace w/ \1*
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (re.++ (str.to_re "") ((_ re.loop 3 3) (re.diff re.allchar (str.to_re "\n")))) (re.diff re.allchar (str.to_re "\n"))) (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re " ") (re.++ (str.to_re "a") (re.++ (str.to_re "n") (re.++ (str.to_re "d") (re.++ (str.to_re " ") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "p") (re.++ (str.to_re "l") (re.++ (str.to_re "a") (re.++ (str.to_re "c") (re.++ (str.to_re "e") (re.++ (str.to_re " ") (re.++ (str.to_re "w") (re.++ (str.to_re "/") (re.++ (str.to_re " ") (re.* (_ re.reference 1))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)