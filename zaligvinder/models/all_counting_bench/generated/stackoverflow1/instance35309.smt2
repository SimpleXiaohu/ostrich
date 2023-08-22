;test regex v ${1}10.500000
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "v") (str.to_re " ")) (re.++ ((_ re.loop 1 1) (str.to_re "")) (re.++ (str.to_re "10") (re.++ (re.diff re.allchar (str.to_re "\n")) (str.to_re "500000")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)