;test regex ^(0+)?(99(\.99?)?|(\.99?)?|\.[0-9]+|0?[0-9](\.[0-9]{0,2})?|(0+)?[0-9][0-9](\.[0-9][0-9]?)?)$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.opt (re.+ (str.to_re "0"))) (re.union (re.union (re.union (re.union (re.++ (str.to_re "99") (re.opt (re.++ (str.to_re ".") (re.opt (str.to_re "99"))))) (re.opt (re.++ (str.to_re ".") (re.opt (str.to_re "99"))))) (re.++ (str.to_re ".") (re.+ (re.range "0" "9")))) (re.++ (re.opt (str.to_re "0")) (re.++ (re.range "0" "9") (re.opt (re.++ (str.to_re ".") ((_ re.loop 0 2) (re.range "0" "9"))))))) (re.++ (re.opt (re.+ (str.to_re "0"))) (re.++ (re.range "0" "9") (re.++ (re.range "0" "9") (re.opt (re.++ (str.to_re ".") (re.++ (re.range "0" "9") (re.opt (re.range "0" "9"))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)