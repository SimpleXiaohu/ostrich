;test regex (p\.fg|pfg|p\.f) \d{11}
(declare-const X String)
(assert (str.in_re X (re.++ (re.union (re.union (re.++ (str.to_re "p") (re.++ (str.to_re ".") (re.++ (str.to_re "f") (str.to_re "g")))) (re.++ (str.to_re "p") (re.++ (str.to_re "f") (str.to_re "g")))) (re.++ (str.to_re "p") (re.++ (str.to_re ".") (str.to_re "f")))) (re.++ (str.to_re " ") ((_ re.loop 11 11) (re.range "0" "9"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)