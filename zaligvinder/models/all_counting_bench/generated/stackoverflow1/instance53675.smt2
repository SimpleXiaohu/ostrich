;test regex FIXED(?:-[A-Za-z0-9]+){3}
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "F") (re.++ (str.to_re "I") (re.++ (str.to_re "X") (re.++ (str.to_re "E") (re.++ (str.to_re "D") ((_ re.loop 3 3) (re.++ (str.to_re "-") (re.+ (re.union (re.range "A" "Z") (re.union (re.range "a" "z") (re.range "0" "9")))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)