;test regex NOT EQUAL{1}:ISSCHEME
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "N") (re.++ (str.to_re "O") (re.++ (str.to_re "T") (re.++ (str.to_re " ") (re.++ (str.to_re "E") (re.++ (str.to_re "Q") (re.++ (str.to_re "U") (re.++ (str.to_re "A") (re.++ ((_ re.loop 1 1) (str.to_re "L")) (re.++ (str.to_re ":") (re.++ (str.to_re "I") (re.++ (str.to_re "S") (re.++ (str.to_re "S") (re.++ (str.to_re "C") (re.++ (str.to_re "H") (re.++ (str.to_re "E") (re.++ (str.to_re "M") (str.to_re "E"))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)