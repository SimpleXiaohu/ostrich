;test regex '^ERROR_REPORT[0-9]{2}[A-Z]{3}[0-9]{10}'
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "") (re.++ (str.to_re "E") (re.++ (str.to_re "R") (re.++ (str.to_re "R") (re.++ (str.to_re "O") (re.++ (str.to_re "R") (re.++ (str.to_re "_") (re.++ (str.to_re "R") (re.++ (str.to_re "E") (re.++ (str.to_re "P") (re.++ (str.to_re "O") (re.++ (str.to_re "R") (re.++ (str.to_re "T") (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ ((_ re.loop 3 3) (re.range "A" "Z")) (re.++ ((_ re.loop 10 10) (re.range "0" "9")) (str.to_re "\u{27}"))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)