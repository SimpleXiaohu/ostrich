;test regex spotify:track:[a-zA-Z0-9]{22}
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "s") (re.++ (str.to_re "p") (re.++ (str.to_re "o") (re.++ (str.to_re "t") (re.++ (str.to_re "i") (re.++ (str.to_re "f") (re.++ (str.to_re "y") (re.++ (str.to_re ":") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re "a") (re.++ (str.to_re "c") (re.++ (str.to_re "k") (re.++ (str.to_re ":") ((_ re.loop 22 22) (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.range "0" "9"))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)