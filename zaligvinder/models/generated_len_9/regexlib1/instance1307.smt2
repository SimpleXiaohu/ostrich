;test regex ^(\+27|27|0)[0-9]{2}( |-)?[0-9]{3}( |-)?[0-9]{4}( |-)?(x[0-9]+)?(ext[0-9]+)?
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "") (re.++ (re.union (re.union (re.++ (str.to_re "+") (str.to_re "27")) (str.to_re "27")) (str.to_re "0")) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (re.opt (re.union (str.to_re " ") (str.to_re "-"))) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.++ (re.opt (re.union (str.to_re " ") (str.to_re "-"))) (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ (re.opt (re.union (str.to_re " ") (str.to_re "-"))) (re.++ (re.opt (re.++ (str.to_re "x") (re.+ (re.range "0" "9")))) (re.opt (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (str.to_re "t") (re.+ (re.range "0" "9")))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)