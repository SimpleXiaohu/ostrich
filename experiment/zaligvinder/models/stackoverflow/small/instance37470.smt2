;test regex &([a-z]{1,2})(?:acute|circ|lig|grave|ring|tilde|uml|cedil|caron);
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "&") (re.++ ((_ re.loop 1 2) (re.range "a" "z")) (re.++ (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.++ (str.to_re "a") (re.++ (str.to_re "c") (re.++ (str.to_re "u") (re.++ (str.to_re "t") (str.to_re "e"))))) (re.++ (str.to_re "c") (re.++ (str.to_re "i") (re.++ (str.to_re "r") (str.to_re "c"))))) (re.++ (str.to_re "l") (re.++ (str.to_re "i") (str.to_re "g")))) (re.++ (str.to_re "g") (re.++ (str.to_re "r") (re.++ (str.to_re "a") (re.++ (str.to_re "v") (str.to_re "e")))))) (re.++ (str.to_re "r") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (str.to_re "g"))))) (re.++ (str.to_re "t") (re.++ (str.to_re "i") (re.++ (str.to_re "l") (re.++ (str.to_re "d") (str.to_re "e")))))) (re.++ (str.to_re "u") (re.++ (str.to_re "m") (str.to_re "l")))) (re.++ (str.to_re "c") (re.++ (str.to_re "e") (re.++ (str.to_re "d") (re.++ (str.to_re "i") (str.to_re "l")))))) (re.++ (str.to_re "c") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (re.++ (str.to_re "o") (str.to_re "n")))))) (str.to_re ";"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)