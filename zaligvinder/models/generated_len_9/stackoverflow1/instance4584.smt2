;test regex ^(ptno|PTNO)?\d{7,11}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.opt (re.union (re.++ (str.to_re "p") (re.++ (str.to_re "t") (re.++ (str.to_re "n") (str.to_re "o")))) (re.++ (str.to_re "P") (re.++ (str.to_re "T") (re.++ (str.to_re "N") (str.to_re "O")))))) ((_ re.loop 7 11) (re.range "0" "9")))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)