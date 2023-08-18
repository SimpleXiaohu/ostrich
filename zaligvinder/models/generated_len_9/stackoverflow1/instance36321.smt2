;test regex ABC_20[0-9]{2}(0[1-9]|1[0-2])([0-2][0-9]|3[0-1])([0-2][0-3])([0-5][0-9])([0-5][0-9])\.sha1
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "A") (re.++ (str.to_re "B") (re.++ (str.to_re "C") (re.++ (str.to_re "_") (re.++ (str.to_re "20") (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "2"))) (re.++ (re.union (re.++ (re.range "0" "2") (re.range "0" "9")) (re.++ (str.to_re "3") (re.range "0" "1"))) (re.++ (re.++ (re.range "0" "2") (re.range "0" "3")) (re.++ (re.++ (re.range "0" "5") (re.range "0" "9")) (re.++ (re.++ (re.range "0" "5") (re.range "0" "9")) (re.++ (str.to_re ".") (re.++ (str.to_re "s") (re.++ (str.to_re "h") (re.++ (str.to_re "a") (str.to_re "1"))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)