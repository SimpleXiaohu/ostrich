;test regex (Name|Extension).*?<b>[<font color=]{0,12}(black|red)?>?(.*?)</.*
(declare-const X String)
(assert (str.in_re X (re.++ (re.union (re.++ (str.to_re "N") (re.++ (str.to_re "a") (re.++ (str.to_re "m") (str.to_re "e")))) (re.++ (str.to_re "E") (re.++ (str.to_re "x") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re "n") (re.++ (str.to_re "s") (re.++ (str.to_re "i") (re.++ (str.to_re "o") (str.to_re "n")))))))))) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "<") (re.++ (str.to_re "b") (re.++ (str.to_re ">") (re.++ ((_ re.loop 0 12) (re.union (str.to_re "<") (re.union (str.to_re "f") (re.union (str.to_re "o") (re.union (str.to_re "n") (re.union (str.to_re "t") (re.union (str.to_re " ") (re.union (str.to_re "c") (re.union (str.to_re "o") (re.union (str.to_re "l") (re.union (str.to_re "o") (re.union (str.to_re "r") (str.to_re "="))))))))))))) (re.++ (re.opt (re.union (re.++ (str.to_re "b") (re.++ (str.to_re "l") (re.++ (str.to_re "a") (re.++ (str.to_re "c") (str.to_re "k"))))) (re.++ (str.to_re "r") (re.++ (str.to_re "e") (str.to_re "d"))))) (re.++ (re.opt (str.to_re ">")) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "<") (re.++ (str.to_re "/") (re.* (re.diff re.allchar (str.to_re "\n"))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)