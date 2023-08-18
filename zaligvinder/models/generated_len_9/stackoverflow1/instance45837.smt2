;test regex SDPCR_[a-z_]*[0-9]{8,8}-[a-z_]*\\\\.asn
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "S") (re.++ (str.to_re "D") (re.++ (str.to_re "P") (re.++ (str.to_re "C") (re.++ (str.to_re "R") (re.++ (str.to_re "_") (re.++ (re.* (re.union (re.range "a" "z") (str.to_re "_"))) (re.++ ((_ re.loop 8 8) (re.range "0" "9")) (re.++ (str.to_re "-") (re.++ (re.* (re.union (re.range "a" "z") (str.to_re "_"))) (re.++ (str.to_re "\\") (re.++ (str.to_re "\\") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "a") (re.++ (str.to_re "s") (str.to_re "n"))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)