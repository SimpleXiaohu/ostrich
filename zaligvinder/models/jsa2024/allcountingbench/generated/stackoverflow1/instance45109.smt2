;test regex 'I am {0}, my age is {1}'
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "I") (re.++ (str.to_re " ") (re.++ (str.to_re "a") (re.++ (str.to_re "m") ((_ re.loop 0 0) (str.to_re " "))))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "m") (re.++ (str.to_re "y") (re.++ (str.to_re " ") (re.++ (str.to_re "a") (re.++ (str.to_re "g") (re.++ (str.to_re "e") (re.++ (str.to_re " ") (re.++ (str.to_re "i") (re.++ (str.to_re "s") (re.++ ((_ re.loop 1 1) (str.to_re " ")) (str.to_re "\u{27}"))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)