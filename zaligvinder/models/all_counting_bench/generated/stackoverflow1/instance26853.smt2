;test regex (?:2050|20[0-4][0-9]|19[0-9]{2})-(?:1[0-2]|[1-9])-(?:3[01]|[12][0-9]|[1-9])
(declare-const X String)
(assert (str.in_re X (re.++ (re.union (re.union (str.to_re "2050") (re.++ (str.to_re "20") (re.++ (re.range "0" "4") (re.range "0" "9")))) (re.++ (str.to_re "19") ((_ re.loop 2 2) (re.range "0" "9")))) (re.++ (str.to_re "-") (re.++ (re.union (re.++ (str.to_re "1") (re.range "0" "2")) (re.range "1" "9")) (re.++ (str.to_re "-") (re.union (re.union (re.++ (str.to_re "3") (str.to_re "01")) (re.++ (str.to_re "12") (re.range "0" "9"))) (re.range "1" "9"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)