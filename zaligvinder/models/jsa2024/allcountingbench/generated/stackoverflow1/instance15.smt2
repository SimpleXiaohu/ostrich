;test regex A?\d{1,3}-(A?\d{1,3}|M)
(declare-const X String)
(assert (str.in_re X (re.++ (re.opt (str.to_re "A")) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.++ (str.to_re "-") (re.union (re.++ (re.opt (str.to_re "A")) ((_ re.loop 1 3) (re.range "0" "9"))) (str.to_re "M")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)