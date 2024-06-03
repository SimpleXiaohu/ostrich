;test regex \y(?:25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])\y
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "y") (re.++ (re.union (re.union (re.union (re.++ (str.to_re "25") (re.range "0" "5")) (re.++ (str.to_re "2") (re.++ (re.range "0" "4") (re.range "0" "9")))) (re.++ (str.to_re "1") ((_ re.loop 2 2) (re.range "0" "9")))) (re.++ (re.opt (re.range "1" "9")) (re.range "0" "9"))) (str.to_re "y")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)