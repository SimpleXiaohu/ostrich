;test regex (\+)?([-\._\(\) ]?[\d]{3,20}[-\._\(\) ]?){2,10}
(declare-const X String)
(assert (str.in_re X (re.++ (re.opt (str.to_re "+")) ((_ re.loop 2 10) (re.++ (re.opt (re.union (str.to_re "-") (re.union (str.to_re ".") (re.union (str.to_re "_") (re.union (str.to_re "(") (re.union (str.to_re ")") (str.to_re " "))))))) (re.++ ((_ re.loop 3 20) (re.range "0" "9")) (re.opt (re.union (str.to_re "-") (re.union (str.to_re ".") (re.union (str.to_re "_") (re.union (str.to_re "(") (re.union (str.to_re ")") (str.to_re " ")))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)