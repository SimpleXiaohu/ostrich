;test regex The quick brown fox jumps      over @{100} the lazy dog
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "T") (re.++ (str.to_re "h") (re.++ (str.to_re "e") (re.++ (str.to_re " ") (re.++ (str.to_re "q") (re.++ (str.to_re "u") (re.++ (str.to_re "i") (re.++ (str.to_re "c") (re.++ (str.to_re "k") (re.++ (str.to_re " ") (re.++ (str.to_re "b") (re.++ (str.to_re "r") (re.++ (str.to_re "o") (re.++ (str.to_re "w") (re.++ (str.to_re "n") (re.++ (str.to_re " ") (re.++ (str.to_re "f") (re.++ (str.to_re "o") (re.++ (str.to_re "x") (re.++ (str.to_re " ") (re.++ (str.to_re "j") (re.++ (str.to_re "u") (re.++ (str.to_re "m") (re.++ (str.to_re "p") (re.++ (str.to_re "s") (re.++ (str.to_re " ") (re.++ (str.to_re " ") (re.++ (str.to_re " ") (re.++ (str.to_re " ") (re.++ (str.to_re " ") (re.++ (str.to_re " ") (re.++ (str.to_re "o") (re.++ (str.to_re "v") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (re.++ (str.to_re " ") (re.++ ((_ re.loop 100 100) (str.to_re "@")) (re.++ (str.to_re " ") (re.++ (str.to_re "t") (re.++ (str.to_re "h") (re.++ (str.to_re "e") (re.++ (str.to_re " ") (re.++ (str.to_re "l") (re.++ (str.to_re "a") (re.++ (str.to_re "z") (re.++ (str.to_re "y") (re.++ (str.to_re " ") (re.++ (str.to_re "d") (re.++ (str.to_re "o") (str.to_re "g"))))))))))))))))))))))))))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 200 (str.len X)))
(check-sat)
(get-model)