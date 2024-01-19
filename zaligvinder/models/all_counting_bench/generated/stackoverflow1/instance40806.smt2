;test regex ((?:(?:[-\d)(+/*]+)?(?:(?:cos|sin|tan)[(](?:\d+?|Pi)[)])?){1,3})
(declare-const X String)
(assert (str.in_re X ((_ re.loop 1 3) (re.++ (re.opt (re.+ (re.union (str.to_re "-") (re.union (re.range "0" "9") (re.union (str.to_re ")") (re.union (str.to_re "(") (re.union (str.to_re "+") (re.union (str.to_re "/") (str.to_re "*"))))))))) (re.opt (re.++ (re.union (re.union (re.++ (str.to_re "c") (re.++ (str.to_re "o") (str.to_re "s"))) (re.++ (str.to_re "s") (re.++ (str.to_re "i") (str.to_re "n")))) (re.++ (str.to_re "t") (re.++ (str.to_re "a") (str.to_re "n")))) (re.++ (str.to_re "(") (re.++ (re.union (re.+ (re.range "0" "9")) (re.++ (str.to_re "P") (str.to_re "i"))) (str.to_re ")")))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)