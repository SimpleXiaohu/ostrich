;test regex ^((\d{2}((0[13578]|1[02])(0[1-9]|[12]\d|3[01])|(0[13456789]|1[012])(0[1-9]|[12]\d|30)|02(0[1-9]|1\d|2[0-8])))|([02468][048]|[13579][26])0229)$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.union (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.union (re.union (re.++ (re.union (re.++ (str.to_re "0") (str.to_re "13578")) (re.++ (str.to_re "1") (str.to_re "02"))) (re.union (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "12") (re.range "0" "9"))) (re.++ (str.to_re "3") (str.to_re "01")))) (re.++ (re.union (re.++ (str.to_re "0") (str.to_re "13456789")) (re.++ (str.to_re "1") (str.to_re "012"))) (re.union (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "12") (re.range "0" "9"))) (str.to_re "30")))) (re.++ (str.to_re "02") (re.union (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "9"))) (re.++ (str.to_re "2") (re.range "0" "8")))))) (re.++ (re.union (re.++ (str.to_re "02468") (str.to_re "048")) (re.++ (str.to_re "13579") (str.to_re "26"))) (str.to_re "0229")))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)