;test regex .*(<li class=\"ball-orange\">([0-9]{1,2})</li>).*
(declare-const X String)
(assert (str.in_re X (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (re.++ (str.to_re "<") (re.++ (str.to_re "l") (re.++ (str.to_re "i") (re.++ (str.to_re " ") (re.++ (str.to_re "c") (re.++ (str.to_re "l") (re.++ (str.to_re "a") (re.++ (str.to_re "s") (re.++ (str.to_re "s") (re.++ (str.to_re "=") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "b") (re.++ (str.to_re "a") (re.++ (str.to_re "l") (re.++ (str.to_re "l") (re.++ (str.to_re "-") (re.++ (str.to_re "o") (re.++ (str.to_re "r") (re.++ (str.to_re "a") (re.++ (str.to_re "n") (re.++ (str.to_re "g") (re.++ (str.to_re "e") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re ">") (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.++ (str.to_re "<") (re.++ (str.to_re "/") (re.++ (str.to_re "l") (re.++ (str.to_re "i") (str.to_re ">")))))))))))))))))))))))))))))) (re.* (re.diff re.allchar (str.to_re "\n")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)