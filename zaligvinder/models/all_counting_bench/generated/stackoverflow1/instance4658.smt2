;test regex ${3} Property ${1} As ${2}
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ ((_ re.loop 3 3) (str.to_re "")) (re.++ (str.to_re " ") (re.++ (str.to_re "P") (re.++ (str.to_re "r") (re.++ (str.to_re "o") (re.++ (str.to_re "p") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (re.++ (str.to_re "t") (re.++ (str.to_re "y") (str.to_re " "))))))))))) (re.++ ((_ re.loop 1 1) (str.to_re "")) (re.++ (str.to_re " ") (re.++ (str.to_re "A") (re.++ (str.to_re "s") (str.to_re " ")))))) ((_ re.loop 2 2) (str.to_re "")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)