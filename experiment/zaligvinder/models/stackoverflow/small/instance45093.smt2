;test regex (?:0?3[2-9]|0?[4-9]\d|1\d{2}|2[0-4]\d|25[0-5])
(declare-const X String)
(assert (str.in_re X (re.union (re.union (re.union (re.union (re.++ (re.opt (str.to_re "0")) (re.++ (str.to_re "3") (re.range "2" "9"))) (re.++ (re.opt (str.to_re "0")) (re.++ (re.range "4" "9") (re.range "0" "9")))) (re.++ (str.to_re "1") ((_ re.loop 2 2) (re.range "0" "9")))) (re.++ (str.to_re "2") (re.++ (re.range "0" "4") (re.range "0" "9")))) (re.++ (str.to_re "25") (re.range "0" "5")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)