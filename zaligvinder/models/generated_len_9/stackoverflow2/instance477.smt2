;test regex SLD ([a-z0-9-]+.[a-z]{2,63})
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "S") (re.++ (str.to_re "L") (re.++ (str.to_re "D") (re.++ (str.to_re " ") (re.++ (re.+ (re.union (re.range "a" "z") (re.union (re.range "0" "9") (str.to_re "-")))) (re.++ (re.diff re.allchar (str.to_re "\n")) ((_ re.loop 2 63) (re.range "a" "z"))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)