;test regex \\d{4}-[0-1]\\d-[0-3]\\dT[0-2]\\d:[0-5]\\d:[0-5]\\d\\+\\d{4}
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "\\") (re.++ ((_ re.loop 4 4) (str.to_re "d")) (re.++ (str.to_re "-") (re.++ (re.range "0" "1") (re.++ (str.to_re "\\") (re.++ (str.to_re "d") (re.++ (str.to_re "-") (re.++ (re.range "0" "3") (re.++ (str.to_re "\\") (re.++ (str.to_re "d") (re.++ (str.to_re "T") (re.++ (re.range "0" "2") (re.++ (str.to_re "\\") (re.++ (str.to_re "d") (re.++ (str.to_re ":") (re.++ (re.range "0" "5") (re.++ (str.to_re "\\") (re.++ (str.to_re "d") (re.++ (str.to_re ":") (re.++ (re.range "0" "5") (re.++ (str.to_re "\\") (re.++ (str.to_re "d") (re.++ (re.+ (str.to_re "\\")) (re.++ (str.to_re "\\") ((_ re.loop 4 4) (str.to_re "d"))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)