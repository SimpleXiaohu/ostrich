;test regex <MACID=([a-z]+[0-9]+-){2}[a-z]+[0-9]+>
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "<") (re.++ (str.to_re "M") (re.++ (str.to_re "A") (re.++ (str.to_re "C") (re.++ (str.to_re "I") (re.++ (str.to_re "D") (re.++ (str.to_re "=") (re.++ ((_ re.loop 2 2) (re.++ (re.+ (re.range "a" "z")) (re.++ (re.+ (re.range "0" "9")) (str.to_re "-")))) (re.++ (re.+ (re.range "a" "z")) (re.++ (re.+ (re.range "0" "9")) (str.to_re ">")))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)