;test regex const-rgx='[\_][a-z0-9\_]{2,30}$|[a-z][\_][a-z0-9\_]{2,30}$'
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (re.++ (str.to_re "c") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "-") (re.++ (str.to_re "r") (re.++ (str.to_re "g") (re.++ (str.to_re "x") (re.++ (str.to_re "=") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "_") ((_ re.loop 2 30) (re.union (re.range "a" "z") (re.union (re.range "0" "9") (str.to_re "_")))))))))))))))) (str.to_re "")) (re.++ (re.++ (re.range "a" "z") (re.++ (str.to_re "_") ((_ re.loop 2 30) (re.union (re.range "a" "z") (re.union (re.range "0" "9") (str.to_re "_")))))) (re.++ (str.to_re "") (str.to_re "\u{27}"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)