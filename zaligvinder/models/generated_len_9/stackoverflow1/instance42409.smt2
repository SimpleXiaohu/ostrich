;test regex ${1}\FOLDER3\
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 1 1) (str.to_re "")) (re.++ (str.to_re "F") (re.++ (str.to_re "O") (re.++ (str.to_re "L") (re.++ (str.to_re "D") (re.++ (str.to_re "E") (re.++ (str.to_re "R") (re.++ (str.to_re "3") (str.to_re "\")))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)