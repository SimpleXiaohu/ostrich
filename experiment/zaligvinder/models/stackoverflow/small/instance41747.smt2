;test regex (?:(?:\+)91)?[7-9]\d{9}0\
(declare-const X String)
(assert (str.in_re X (re.++ (re.opt (re.++ (str.to_re "+") (str.to_re "91"))) (re.++ (re.range "7" "9") (re.++ ((_ re.loop 9 9) (re.range "0" "9")) (re.++ (str.to_re "0") (str.to_re "\")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)