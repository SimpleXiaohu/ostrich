;test regex perl -pe "s/[A-Za-z]{2}$//" <a.txt >b.txt
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "p") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (re.++ (str.to_re "l") (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re "p") (re.++ (str.to_re "e") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "s") (re.++ (str.to_re "/") ((_ re.loop 2 2) (re.union (re.range "A" "Z") (re.range "a" "z"))))))))))))))) (re.++ (str.to_re "") (re.++ (str.to_re "/") (re.++ (str.to_re "/") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re " ") (re.++ (str.to_re "<") (re.++ (str.to_re "a") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "t") (re.++ (str.to_re "x") (re.++ (str.to_re "t") (re.++ (str.to_re " ") (re.++ (str.to_re ">") (re.++ (str.to_re "b") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "t") (re.++ (str.to_re "x") (str.to_re "t")))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)