;test regex ^(cat|dog|bird){1}(cat|dog|bird)?(cat|dog|bird)?$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ ((_ re.loop 1 1) (re.union (re.union (re.++ (str.to_re "c") (re.++ (str.to_re "a") (str.to_re "t"))) (re.++ (str.to_re "d") (re.++ (str.to_re "o") (str.to_re "g")))) (re.++ (str.to_re "b") (re.++ (str.to_re "i") (re.++ (str.to_re "r") (str.to_re "d")))))) (re.++ (re.opt (re.union (re.union (re.++ (str.to_re "c") (re.++ (str.to_re "a") (str.to_re "t"))) (re.++ (str.to_re "d") (re.++ (str.to_re "o") (str.to_re "g")))) (re.++ (str.to_re "b") (re.++ (str.to_re "i") (re.++ (str.to_re "r") (str.to_re "d")))))) (re.opt (re.union (re.union (re.++ (str.to_re "c") (re.++ (str.to_re "a") (str.to_re "t"))) (re.++ (str.to_re "d") (re.++ (str.to_re "o") (str.to_re "g")))) (re.++ (str.to_re "b") (re.++ (str.to_re "i") (re.++ (str.to_re "r") (str.to_re "d"))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)