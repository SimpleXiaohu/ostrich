;test regex ((investment)|(property)|(something)|(else){1,3})
(declare-const X String)
(assert (str.in_re X (re.union (re.union (re.union (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "v") (re.++ (str.to_re "e") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "m") (re.++ (str.to_re "e") (re.++ (str.to_re "n") (str.to_re "t")))))))))) (re.++ (str.to_re "p") (re.++ (str.to_re "r") (re.++ (str.to_re "o") (re.++ (str.to_re "p") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (re.++ (str.to_re "t") (str.to_re "y"))))))))) (re.++ (str.to_re "s") (re.++ (str.to_re "o") (re.++ (str.to_re "m") (re.++ (str.to_re "e") (re.++ (str.to_re "t") (re.++ (str.to_re "h") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (str.to_re "g")))))))))) ((_ re.loop 1 3) (re.++ (str.to_re "e") (re.++ (str.to_re "l") (re.++ (str.to_re "s") (str.to_re "e"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)