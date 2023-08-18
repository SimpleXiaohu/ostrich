;test regex ^(?:[1-9][0-9]{0,2}(?:(,?)[0-9]{3})?(?:\1[0-9]{3})*(?:\.[0-9]*[1-9])?|0\.[0-9]*[1-9])[kbmt]?$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.union (re.++ (re.range "1" "9") (re.++ ((_ re.loop 0 2) (re.range "0" "9")) (re.++ (re.opt (re.++ (re.opt (str.to_re ",")) ((_ re.loop 3 3) (re.range "0" "9")))) (re.++ (re.* (re.++ (_ re.reference 1) ((_ re.loop 3 3) (re.range "0" "9")))) (re.opt (re.++ (str.to_re ".") (re.++ (re.* (re.range "0" "9")) (re.range "1" "9")))))))) (re.++ (str.to_re "0") (re.++ (str.to_re ".") (re.++ (re.* (re.range "0" "9")) (re.range "1" "9"))))) (re.opt (re.union (str.to_re "k") (re.union (str.to_re "b") (re.union (str.to_re "m") (str.to_re "t"))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)