;test regex ^([\+][0-9]{1,3}([ \.\-])?)?([\(]{1}[0-9]{3}[\)])?([0-9A-Z \.\-]{1,32})((x|ext|extension)?[0-9]{1,4}?)$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.opt (re.++ (str.to_re "+") (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (re.union (str.to_re ".") (str.to_re "-"))))))) (re.++ (re.opt (re.++ ((_ re.loop 1 1) (str.to_re "(")) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re ")")))) (re.++ ((_ re.loop 1 32) (re.union (re.range "0" "9") (re.union (re.range "A" "Z") (re.union (str.to_re " ") (re.union (str.to_re ".") (str.to_re "-")))))) (re.++ (re.opt (re.union (re.union (str.to_re "x") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (str.to_re "t")))) (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re "n") (re.++ (str.to_re "s") (re.++ (str.to_re "i") (re.++ (str.to_re "o") (str.to_re "n"))))))))))) ((_ re.loop 1 4) (re.range "0" "9"))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)