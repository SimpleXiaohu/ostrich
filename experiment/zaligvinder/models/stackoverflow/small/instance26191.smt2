;test regex GiM [2-9]\d \(\d{2,4}\/\d{2,4} DF\) \(((100,00)|(9\d,\d\d))%
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "G") (re.++ (str.to_re "i") (re.++ (str.to_re "M") (re.++ (str.to_re " ") (re.++ (re.range "2" "9") (re.++ (re.range "0" "9") (re.++ (str.to_re " ") (re.++ (str.to_re "(") (re.++ ((_ re.loop 2 4) (re.range "0" "9")) (re.++ (str.to_re "/") (re.++ ((_ re.loop 2 4) (re.range "0" "9")) (re.++ (str.to_re " ") (re.++ (str.to_re "D") (re.++ (str.to_re "F") (re.++ (str.to_re ")") (re.++ (str.to_re " ") (re.++ (str.to_re "(") (re.++ (re.union (re.++ (str.to_re "100") (re.++ (str.to_re ",") (str.to_re "00"))) (re.++ (re.++ (str.to_re "9") (re.range "0" "9")) (re.++ (str.to_re ",") (re.++ (re.range "0" "9") (re.range "0" "9"))))) (str.to_re "%")))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)