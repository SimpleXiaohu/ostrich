;test regex 	(span|font) # tagname
(declare-const X String)
(assert (str.in_re X (re.++ (re.union (re.++ (str.to_re "s") (re.++ (str.to_re "p") (re.++ (str.to_re "a") (str.to_re "n")))) (re.++ (str.to_re "f") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (str.to_re "t"))))) (re.++ (str.to_re " ") (re.++ (str.to_re "#") (re.++ (str.to_re " ") (re.++ (str.to_re "t") (re.++ (str.to_re "a") (re.++ (str.to_re "g") (re.++ (str.to_re "n") (re.++ (str.to_re "a") (re.++ (str.to_re "m") (str.to_re "e")))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)