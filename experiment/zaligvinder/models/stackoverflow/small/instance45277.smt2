;test regex (?:\+?(\d{1,3}))?([-. (]*(\d{3})[-. )]*)?((\d{3})[-. ]*(\d{2,4})(?:[-.x ]*(\d+))?)
(declare-const X String)
(assert (str.in_re X (re.++ (re.opt (re.++ (re.opt (str.to_re "+")) ((_ re.loop 1 3) (re.range "0" "9")))) (re.++ (re.opt (re.++ (re.* (re.union (str.to_re "-") (re.union (str.to_re ".") (re.union (str.to_re " ") (str.to_re "("))))) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.* (re.union (str.to_re "-") (re.union (str.to_re ".") (re.union (str.to_re " ") (str.to_re ")")))))))) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.++ (re.* (re.union (str.to_re "-") (re.union (str.to_re ".") (str.to_re " ")))) (re.++ ((_ re.loop 2 4) (re.range "0" "9")) (re.opt (re.++ (re.* (re.union (str.to_re "-") (re.union (str.to_re ".") (re.union (str.to_re "x") (str.to_re " "))))) (re.+ (re.range "0" "9")))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)