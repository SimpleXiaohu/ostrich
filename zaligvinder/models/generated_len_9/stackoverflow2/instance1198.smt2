;test regex (\\bUSD\\d{1,99})(\\bMAC)(\\bIPHONE\\d)
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "\\") (re.++ (str.to_re "b") (re.++ (str.to_re "U") (re.++ (str.to_re "S") (re.++ (str.to_re "D") (re.++ (str.to_re "\\") ((_ re.loop 1 99) (str.to_re "d")))))))) (re.++ (re.++ (str.to_re "\\") (re.++ (str.to_re "b") (re.++ (str.to_re "M") (re.++ (str.to_re "A") (str.to_re "C"))))) (re.++ (str.to_re "\\") (re.++ (str.to_re "b") (re.++ (str.to_re "I") (re.++ (str.to_re "P") (re.++ (str.to_re "H") (re.++ (str.to_re "O") (re.++ (str.to_re "N") (re.++ (str.to_re "E") (re.++ (str.to_re "\\") (str.to_re "d"))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)