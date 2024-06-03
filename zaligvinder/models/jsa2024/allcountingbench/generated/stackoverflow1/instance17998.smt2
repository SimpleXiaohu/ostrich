;test regex (((on |off )([a-z]{1,})? ([a-z]{2,})))|(([a-z]{2,}) (on|off))
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (re.union (re.++ (str.to_re "o") (re.++ (str.to_re "n") (str.to_re " "))) (re.++ (str.to_re "o") (re.++ (str.to_re "f") (re.++ (str.to_re "f") (str.to_re " "))))) (re.++ (re.opt (re.++ (re.* (re.range "a" "z")) ((_ re.loop 1 1) (re.range "a" "z")))) (re.++ (str.to_re " ") (re.++ (re.* (re.range "a" "z")) ((_ re.loop 2 2) (re.range "a" "z")))))) (re.++ (re.++ (re.* (re.range "a" "z")) ((_ re.loop 2 2) (re.range "a" "z"))) (re.++ (str.to_re " ") (re.union (re.++ (str.to_re "o") (str.to_re "n")) (re.++ (str.to_re "o") (re.++ (str.to_re "f") (str.to_re "f")))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)