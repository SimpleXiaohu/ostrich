;test regex Hello @{1}!adkjnasj
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "H") (re.++ (str.to_re "e") (re.++ (str.to_re "l") (re.++ (str.to_re "l") (re.++ (str.to_re "o") (re.++ (str.to_re " ") (re.++ ((_ re.loop 1 1) (str.to_re "@")) (re.++ (str.to_re "!") (re.++ (str.to_re "a") (re.++ (str.to_re "d") (re.++ (str.to_re "k") (re.++ (str.to_re "j") (re.++ (str.to_re "n") (re.++ (str.to_re "a") (re.++ (str.to_re "s") (str.to_re "j"))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)