;test regex ^((?:-?0*\d+\.)?(?:0*)(?:2[0-3]|1[0-9]|[0-9]))(?::0*([0-5]?[0-9]))?(?::0*((?:[0-5]?[0-9])(?:\.\d{0,7})?))?$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.++ (re.opt (re.++ (re.opt (str.to_re "-")) (re.++ (re.* (str.to_re "0")) (re.++ (re.+ (re.range "0" "9")) (str.to_re "."))))) (re.++ (re.* (str.to_re "0")) (re.union (re.union (re.++ (str.to_re "2") (re.range "0" "3")) (re.++ (str.to_re "1") (re.range "0" "9"))) (re.range "0" "9")))) (re.++ (re.opt (re.++ (str.to_re ":") (re.++ (re.* (str.to_re "0")) (re.++ (re.opt (re.range "0" "5")) (re.range "0" "9"))))) (re.opt (re.++ (str.to_re ":") (re.++ (re.* (str.to_re "0")) (re.++ (re.++ (re.opt (re.range "0" "5")) (re.range "0" "9")) (re.opt (re.++ (str.to_re ".") ((_ re.loop 0 7) (re.range "0" "9"))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)