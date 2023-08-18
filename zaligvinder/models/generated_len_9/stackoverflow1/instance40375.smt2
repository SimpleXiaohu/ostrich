;test regex \AA[A-Z0-9]{5}\d{3} T\d{14} S\d{5}\z
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "A") (re.++ (str.to_re "A") (re.++ ((_ re.loop 5 5) (re.union (re.range "A" "Z") (re.range "0" "9"))) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.++ (str.to_re " ") (re.++ (str.to_re "T") (re.++ ((_ re.loop 14 14) (re.range "0" "9")) (re.++ (str.to_re " ") (re.++ (str.to_re "S") (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (str.to_re "z")))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)