;test regex ^((961)?(7(0|1))|(961|0)3)[0-9]{6}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.union (re.++ (re.opt (str.to_re "961")) (re.++ (str.to_re "7") (re.union (str.to_re "0") (str.to_re "1")))) (re.++ (re.union (str.to_re "961") (str.to_re "0")) (str.to_re "3"))) ((_ re.loop 6 6) (re.range "0" "9")))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)