;test regex (?:[A-Z]{2}|com|org|net|gov|mil|biz|info|mobi|name|in|aero|jobs|museum)
(declare-const X String)
(assert (str.in_re X (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union ((_ re.loop 2 2) (re.range "A" "Z")) (re.++ (str.to_re "c") (re.++ (str.to_re "o") (str.to_re "m")))) (re.++ (str.to_re "o") (re.++ (str.to_re "r") (str.to_re "g")))) (re.++ (str.to_re "n") (re.++ (str.to_re "e") (str.to_re "t")))) (re.++ (str.to_re "g") (re.++ (str.to_re "o") (str.to_re "v")))) (re.++ (str.to_re "m") (re.++ (str.to_re "i") (str.to_re "l")))) (re.++ (str.to_re "b") (re.++ (str.to_re "i") (str.to_re "z")))) (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "f") (str.to_re "o"))))) (re.++ (str.to_re "m") (re.++ (str.to_re "o") (re.++ (str.to_re "b") (str.to_re "i"))))) (re.++ (str.to_re "n") (re.++ (str.to_re "a") (re.++ (str.to_re "m") (str.to_re "e"))))) (re.++ (str.to_re "i") (str.to_re "n"))) (re.++ (str.to_re "a") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (str.to_re "o"))))) (re.++ (str.to_re "j") (re.++ (str.to_re "o") (re.++ (str.to_re "b") (str.to_re "s"))))) (re.++ (str.to_re "m") (re.++ (str.to_re "u") (re.++ (str.to_re "s") (re.++ (str.to_re "e") (re.++ (str.to_re "u") (str.to_re "m")))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)