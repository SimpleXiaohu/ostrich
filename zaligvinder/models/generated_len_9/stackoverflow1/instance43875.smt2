;test regex (fill="#)(.)\2{5}
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "f") (re.++ (str.to_re "i") (re.++ (str.to_re "l") (re.++ (str.to_re "l") (re.++ (str.to_re "=") (re.++ (str.to_re "\u{22}") (str.to_re "#"))))))) (re.++ (re.diff re.allchar (str.to_re "\n")) ((_ re.loop 5 5) (_ re.reference 2))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)