;test regex ^ABCD_EFG_[0-9]*_([02-9]|1[0235679]|1[148]0{0,3}[1-9])[0-9]*\.csv$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "A") (re.++ (str.to_re "B") (re.++ (str.to_re "C") (re.++ (str.to_re "D") (re.++ (str.to_re "_") (re.++ (str.to_re "E") (re.++ (str.to_re "F") (re.++ (str.to_re "G") (re.++ (str.to_re "_") (re.++ (re.* (re.range "0" "9")) (re.++ (str.to_re "_") (re.++ (re.union (re.union (re.range "02" "9") (re.++ (str.to_re "1") (str.to_re "0235679"))) (re.++ (str.to_re "1") (re.++ (str.to_re "148") (re.++ ((_ re.loop 0 3) (str.to_re "0")) (re.range "1" "9"))))) (re.++ (re.* (re.range "0" "9")) (re.++ (str.to_re ".") (re.++ (str.to_re "c") (re.++ (str.to_re "s") (str.to_re "v")))))))))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)