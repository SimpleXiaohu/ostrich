;test regex ([1-57-8][0-9]{2}|0([1-9][0-9]|[0-9][1-9])|9([0-8][0-9]|[0-9][0-8]))([1-9][0-9]{3}|0([1-9][0-9]{2}|0([1-9][0-9]|0[1-9])))[0-9]([1-9][0-9]|0[1-9])
(declare-const X String)
(assert (str.in_re X (re.++ (re.union (re.union (re.++ (re.union (re.range "1" "57") (re.union (str.to_re "-") (str.to_re "8"))) ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to_re "0") (re.union (re.++ (re.range "1" "9") (re.range "0" "9")) (re.++ (re.range "0" "9") (re.range "1" "9"))))) (re.++ (str.to_re "9") (re.union (re.++ (re.range "0" "8") (re.range "0" "9")) (re.++ (re.range "0" "9") (re.range "0" "8"))))) (re.++ (re.union (re.++ (re.range "1" "9") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (str.to_re "0") (re.union (re.++ (re.range "1" "9") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to_re "0") (re.union (re.++ (re.range "1" "9") (re.range "0" "9")) (re.++ (str.to_re "0") (re.range "1" "9"))))))) (re.++ (re.range "0" "9") (re.union (re.++ (re.range "1" "9") (re.range "0" "9")) (re.++ (str.to_re "0") (re.range "1" "9"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)