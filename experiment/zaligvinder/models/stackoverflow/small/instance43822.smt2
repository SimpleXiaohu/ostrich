;test regex -?[0-4]\.\d{2}|[5-9]\.\d{2}|10\.00|-5\.00
(declare-const X String)
(assert (str.in_re X (re.union (re.union (re.union (re.++ (re.opt (str.to_re "-")) (re.++ (re.range "0" "4") (re.++ (str.to_re ".") ((_ re.loop 2 2) (re.range "0" "9"))))) (re.++ (re.range "5" "9") (re.++ (str.to_re ".") ((_ re.loop 2 2) (re.range "0" "9"))))) (re.++ (str.to_re "10") (re.++ (str.to_re ".") (str.to_re "00")))) (re.++ (str.to_re "-") (re.++ (str.to_re "5") (re.++ (str.to_re ".") (str.to_re "00")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)