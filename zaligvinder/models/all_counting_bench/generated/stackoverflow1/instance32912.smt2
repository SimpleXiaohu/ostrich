;test regex ((?:CLASS1|CLASS2|CLASS3)(?:\.[A-Za-z0-9_]+){1,})
(declare-const X String)
(assert (str.in_re X (re.++ (re.union (re.union (re.++ (str.to_re "C") (re.++ (str.to_re "L") (re.++ (str.to_re "A") (re.++ (str.to_re "S") (re.++ (str.to_re "S") (str.to_re "1")))))) (re.++ (str.to_re "C") (re.++ (str.to_re "L") (re.++ (str.to_re "A") (re.++ (str.to_re "S") (re.++ (str.to_re "S") (str.to_re "2"))))))) (re.++ (str.to_re "C") (re.++ (str.to_re "L") (re.++ (str.to_re "A") (re.++ (str.to_re "S") (re.++ (str.to_re "S") (str.to_re "3"))))))) (re.++ (re.* (re.++ (str.to_re ".") (re.+ (re.union (re.range "A" "Z") (re.union (re.range "a" "z") (re.union (re.range "0" "9") (str.to_re "_"))))))) ((_ re.loop 1 1) (re.++ (str.to_re ".") (re.+ (re.union (re.range "A" "Z") (re.union (re.range "a" "z") (re.union (re.range "0" "9") (str.to_re "_")))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)