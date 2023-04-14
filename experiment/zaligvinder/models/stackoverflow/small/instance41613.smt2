;test regex ([ a-zA-Z0-9]{1,3}\.){2,4}
(declare-const X String)
(assert (str.in_re X ((_ re.loop 2 4) (re.++ ((_ re.loop 1 3) (re.union (str.to_re " ") (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.range "0" "9"))))) (str.to_re ".")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)