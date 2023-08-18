;test regex ([01]\d{3}|20\d{2})-(0\d|1[0-2])-([0-2]\d|3[01]) ([0-1]\d|2[0-3]):[0-5]\d:[0-5]\d
(declare-const X String)
(assert (str.in_re X (re.++ (re.union (re.++ (str.to_re "01") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (str.to_re "20") ((_ re.loop 2 2) (re.range "0" "9")))) (re.++ (str.to_re "-") (re.++ (re.union (re.++ (str.to_re "0") (re.range "0" "9")) (re.++ (str.to_re "1") (re.range "0" "2"))) (re.++ (str.to_re "-") (re.++ (re.union (re.++ (re.range "0" "2") (re.range "0" "9")) (re.++ (str.to_re "3") (str.to_re "01"))) (re.++ (str.to_re " ") (re.++ (re.union (re.++ (re.range "0" "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "3"))) (re.++ (str.to_re ":") (re.++ (re.range "0" "5") (re.++ (re.range "0" "9") (re.++ (str.to_re ":") (re.++ (re.range "0" "5") (re.range "0" "9")))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)