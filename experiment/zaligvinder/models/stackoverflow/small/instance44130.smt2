;test regex (beautiful)?.*(people[a-zA-Z0-9]{2,3})
(declare-const X String)
(assert (str.in_re X (re.++ (re.opt (re.++ (str.to_re "b") (re.++ (str.to_re "e") (re.++ (str.to_re "a") (re.++ (str.to_re "u") (re.++ (str.to_re "t") (re.++ (str.to_re "i") (re.++ (str.to_re "f") (re.++ (str.to_re "u") (str.to_re "l")))))))))) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "p") (re.++ (str.to_re "e") (re.++ (str.to_re "o") (re.++ (str.to_re "p") (re.++ (str.to_re "l") (re.++ (str.to_re "e") ((_ re.loop 2 3) (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.range "0" "9"))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)