;test regex "CDFSDDRC(\d+)(EUR|GBP)(\d{2})(\d{2})(\d{2}).xls"
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "C") (re.++ (str.to_re "D") (re.++ (str.to_re "F") (re.++ (str.to_re "S") (re.++ (str.to_re "D") (re.++ (str.to_re "D") (re.++ (str.to_re "R") (re.++ (str.to_re "C") (re.++ (re.+ (re.range "0" "9")) (re.++ (re.union (re.++ (str.to_re "E") (re.++ (str.to_re "U") (str.to_re "R"))) (re.++ (str.to_re "G") (re.++ (str.to_re "B") (str.to_re "P")))) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "x") (re.++ (str.to_re "l") (re.++ (str.to_re "s") (str.to_re "\u{22}")))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)