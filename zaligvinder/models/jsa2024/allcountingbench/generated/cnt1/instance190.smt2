;test regex ([?&])PHPSESSID=([0-9a-zA-Z]{32})
(declare-const X String)
(assert (str.in_re X (re.++ (re.union (str.to_re "?") (str.to_re "&")) (re.++ (str.to_re "P") (re.++ (str.to_re "H") (re.++ (str.to_re "P") (re.++ (str.to_re "S") (re.++ (str.to_re "E") (re.++ (str.to_re "S") (re.++ (str.to_re "S") (re.++ (str.to_re "I") (re.++ (str.to_re "D") (re.++ (str.to_re "=") ((_ re.loop 32 32) (re.union (re.range "0" "9") (re.union (re.range "a" "z") (re.range "A" "Z")))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)