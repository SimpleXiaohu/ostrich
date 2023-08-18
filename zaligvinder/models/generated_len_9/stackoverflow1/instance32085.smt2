;test regex ([0-9]{1,4})-(1[012]|0?[1-9])-([12][0-9]|3[01]|0?[1-9])
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 1 4) (re.range "0" "9")) (re.++ (str.to_re "-") (re.++ (re.union (re.++ (str.to_re "1") (str.to_re "012")) (re.++ (re.opt (str.to_re "0")) (re.range "1" "9"))) (re.++ (str.to_re "-") (re.union (re.union (re.++ (str.to_re "12") (re.range "0" "9")) (re.++ (str.to_re "3") (str.to_re "01"))) (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)