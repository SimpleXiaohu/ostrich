;test regex (main\.)?(\w)+\.(css|js|woff|woff2|eot|ttf|png|ico){1}
(declare-const X String)
(assert (str.in_re X (re.++ (re.opt (re.++ (str.to_re "m") (re.++ (str.to_re "a") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (str.to_re ".")))))) (re.++ (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))) (re.++ (str.to_re ".") ((_ re.loop 1 1) (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.++ (str.to_re "c") (re.++ (str.to_re "s") (str.to_re "s"))) (re.++ (str.to_re "j") (str.to_re "s"))) (re.++ (str.to_re "w") (re.++ (str.to_re "o") (re.++ (str.to_re "f") (str.to_re "f"))))) (re.++ (str.to_re "w") (re.++ (str.to_re "o") (re.++ (str.to_re "f") (re.++ (str.to_re "f") (str.to_re "2")))))) (re.++ (str.to_re "e") (re.++ (str.to_re "o") (str.to_re "t")))) (re.++ (str.to_re "t") (re.++ (str.to_re "t") (str.to_re "f")))) (re.++ (str.to_re "p") (re.++ (str.to_re "n") (str.to_re "g")))) (re.++ (str.to_re "i") (re.++ (str.to_re "c") (str.to_re "o"))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)