;test regex (\d{3}(\.\d{1,2})?)|(V\d{2}(\.\d)?)|(E\d{3}(\.\d)?)
(declare-const X String)
(assert (str.in_re X (re.union (re.union (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.++ (str.to_re ".") ((_ re.loop 1 2) (re.range "0" "9"))))) (re.++ (str.to_re "V") (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (re.++ (str.to_re ".") (re.range "0" "9")))))) (re.++ (str.to_re "E") (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.++ (str.to_re ".") (re.range "0" "9"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)