;test regex SELF MATCHES '\\d{10}|\\d{9}[Xx]'
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (str.to_re "S") (re.++ (str.to_re "E") (re.++ (str.to_re "L") (re.++ (str.to_re "F") (re.++ (str.to_re " ") (re.++ (str.to_re "M") (re.++ (str.to_re "A") (re.++ (str.to_re "T") (re.++ (str.to_re "C") (re.++ (str.to_re "H") (re.++ (str.to_re "E") (re.++ (str.to_re "S") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "\\") ((_ re.loop 10 10) (str.to_re "d"))))))))))))))))) (re.++ (str.to_re "\\") (re.++ ((_ re.loop 9 9) (str.to_re "d")) (re.++ (re.union (str.to_re "X") (str.to_re "x")) (str.to_re "\u{27}")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)