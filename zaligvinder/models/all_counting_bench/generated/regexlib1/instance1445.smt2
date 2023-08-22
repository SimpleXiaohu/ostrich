;test regex ((0[1-9])|(1[0-9])|(2[0-9])|(3[0]))/((0[1-9])|(1[0-2]))/14[3-9]{2}
(declare-const X String)
(assert (str.in_re X (re.++ (re.union (re.union (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "9"))) (re.++ (str.to_re "2") (re.range "0" "9"))) (re.++ (str.to_re "3") (str.to_re "0"))) (re.++ (str.to_re "/") (re.++ (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "2"))) (re.++ (str.to_re "/") (re.++ (str.to_re "14") ((_ re.loop 2 2) (re.range "3" "9")))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)