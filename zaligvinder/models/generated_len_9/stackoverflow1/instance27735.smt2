;test regex ^((?:\*[aA][lL]{2})|([a-zA-Z0-9])\1{17})$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.union (re.++ (str.to_re "*") (re.++ (re.union (str.to_re "a") (str.to_re "A")) ((_ re.loop 2 2) (re.union (str.to_re "l") (str.to_re "L"))))) (re.++ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.range "0" "9"))) ((_ re.loop 17 17) (_ re.reference 1))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)