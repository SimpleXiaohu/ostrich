;test regex (^(\d{3,4}-)?\d{7,8})$|(13[0-9]{9})
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (re.++ (str.to_re "") (re.++ (re.opt (re.++ ((_ re.loop 3 4) (re.range "0" "9")) (str.to_re "-"))) ((_ re.loop 7 8) (re.range "0" "9")))) (str.to_re "")) (re.++ (str.to_re "13") ((_ re.loop 9 9) (re.range "0" "9"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)