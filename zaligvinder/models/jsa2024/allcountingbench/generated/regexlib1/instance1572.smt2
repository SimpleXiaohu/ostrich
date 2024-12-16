;test regex ^(([0]?[1-9]|1[0-2])/([0-2]?[0-9]|3[0-1])/[1-2]\d{3})? ?((([0-1]?\d)|(2[0-3])):[0-5]\d)?(:[0-5]\d)? ?(AM|am|PM|pm)?$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.opt (re.++ (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "2"))) (re.++ (str.to_re "/") (re.++ (re.union (re.++ (re.opt (re.range "0" "2")) (re.range "0" "9")) (re.++ (str.to_re "3") (re.range "0" "1"))) (re.++ (str.to_re "/") (re.++ (re.range "1" "2") ((_ re.loop 3 3) (re.range "0" "9")))))))) (re.++ (re.opt (str.to_re " ")) (re.++ (re.opt (re.++ (re.union (re.++ (re.opt (re.range "0" "1")) (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "3"))) (re.++ (str.to_re ":") (re.++ (re.range "0" "5") (re.range "0" "9"))))) (re.++ (re.opt (re.++ (str.to_re ":") (re.++ (re.range "0" "5") (re.range "0" "9")))) (re.++ (re.opt (str.to_re " ")) (re.opt (re.union (re.union (re.union (re.++ (str.to_re "A") (str.to_re "M")) (re.++ (str.to_re "a") (str.to_re "m"))) (re.++ (str.to_re "P") (str.to_re "M"))) (re.++ (str.to_re "p") (str.to_re "m")))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)