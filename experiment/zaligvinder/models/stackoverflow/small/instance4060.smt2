;test regex $ sed -i 's/[IVXLC]{1,}[.]//g' sonnets.txt
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "") (re.++ (str.to_re " ") (re.++ (str.to_re "s") (re.++ (str.to_re "e") (re.++ (str.to_re "d") (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re "i") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "s") (re.++ (str.to_re "/") (re.++ (re.++ (re.* (re.union (str.to_re "I") (re.union (str.to_re "V") (re.union (str.to_re "X") (re.union (str.to_re "L") (str.to_re "C")))))) ((_ re.loop 1 1) (re.union (str.to_re "I") (re.union (str.to_re "V") (re.union (str.to_re "X") (re.union (str.to_re "L") (str.to_re "C"))))))) (re.++ (str.to_re ".") (re.++ (str.to_re "/") (re.++ (str.to_re "/") (re.++ (str.to_re "g") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re " ") (re.++ (str.to_re "s") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (re.++ (str.to_re "n") (re.++ (str.to_re "e") (re.++ (str.to_re "t") (re.++ (str.to_re "s") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "t") (re.++ (str.to_re "x") (str.to_re "t"))))))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)