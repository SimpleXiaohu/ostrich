;test regex ([b-df-hj-np-tv-xz][aeiouy](?:[a-z])?|[aeiouy][b-df-hj-np-tv-xz](?:[a-z])?)(\1){2,}
(declare-const X String)
(assert (str.in_re X (re.++ (re.union (re.++ (re.union (re.range "b" "d") (re.union (re.range "f" "h") (re.union (re.range "j" "n") (re.union (re.range "p" "t") (re.union (re.range "v" "x") (str.to_re "z")))))) (re.++ (re.union (str.to_re "a") (re.union (str.to_re "e") (re.union (str.to_re "i") (re.union (str.to_re "o") (re.union (str.to_re "u") (str.to_re "y")))))) (re.opt (re.range "a" "z")))) (re.++ (re.union (str.to_re "a") (re.union (str.to_re "e") (re.union (str.to_re "i") (re.union (str.to_re "o") (re.union (str.to_re "u") (str.to_re "y")))))) (re.++ (re.union (re.range "b" "d") (re.union (re.range "f" "h") (re.union (re.range "j" "n") (re.union (re.range "p" "t") (re.union (re.range "v" "x") (str.to_re "z")))))) (re.opt (re.range "a" "z"))))) (re.++ (re.* (_ re.reference 1)) ((_ re.loop 2 2) (_ re.reference 1))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)