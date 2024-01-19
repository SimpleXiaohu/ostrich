;test regex @"[a-zA-Z]{3}\d{3}_Enrollment_[0-9]{8}_[0-9]{4}\.xml"
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "@") (re.++ (str.to_re "\u{22}") (re.++ ((_ re.loop 3 3) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.++ (str.to_re "_") (re.++ (str.to_re "E") (re.++ (str.to_re "n") (re.++ (str.to_re "r") (re.++ (str.to_re "o") (re.++ (str.to_re "l") (re.++ (str.to_re "l") (re.++ (str.to_re "m") (re.++ (str.to_re "e") (re.++ (str.to_re "n") (re.++ (str.to_re "t") (re.++ (str.to_re "_") (re.++ ((_ re.loop 8 8) (re.range "0" "9")) (re.++ (str.to_re "_") (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ (str.to_re ".") (re.++ (str.to_re "x") (re.++ (str.to_re "m") (re.++ (str.to_re "l") (str.to_re "\u{22}"))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)