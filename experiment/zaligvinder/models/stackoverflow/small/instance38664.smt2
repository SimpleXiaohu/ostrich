;test regex ^(([\d]{2} )|(2[abAB] ))*(([\d]{2})|(2[abAB]))$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.* (re.union (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re " ")) (re.++ (str.to_re "2") (re.++ (re.union (str.to_re "a") (re.union (str.to_re "b") (re.union (str.to_re "A") (str.to_re "B")))) (str.to_re " "))))) (re.union ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (str.to_re "2") (re.union (str.to_re "a") (re.union (str.to_re "b") (re.union (str.to_re "A") (str.to_re "B")))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)