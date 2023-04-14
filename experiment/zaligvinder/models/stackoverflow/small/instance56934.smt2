;test regex (?:(?:25[0-5]|[0-2]?[0-4]?[0-9]|[0-1]?[0-9]?[0-9])\.){3}(?:(?:25[0-5]|[0-2]?[0-4]?[0-9]|[0-1]?[0-9]?[0-9]))(?:\/(?:3[0-2]|[1-2]?[0-9])|$)$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ ((_ re.loop 3 3) (re.++ (re.union (re.union (re.++ (str.to_re "25") (re.range "0" "5")) (re.++ (re.opt (re.range "0" "2")) (re.++ (re.opt (re.range "0" "4")) (re.range "0" "9")))) (re.++ (re.opt (re.range "0" "1")) (re.++ (re.opt (re.range "0" "9")) (re.range "0" "9")))) (str.to_re "."))) (re.++ (re.union (re.union (re.++ (str.to_re "25") (re.range "0" "5")) (re.++ (re.opt (re.range "0" "2")) (re.++ (re.opt (re.range "0" "4")) (re.range "0" "9")))) (re.++ (re.opt (re.range "0" "1")) (re.++ (re.opt (re.range "0" "9")) (re.range "0" "9")))) (re.union (re.++ (str.to_re "/") (re.union (re.++ (str.to_re "3") (re.range "0" "2")) (re.++ (re.opt (re.range "1" "2")) (re.range "0" "9")))) (str.to_re "")))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)