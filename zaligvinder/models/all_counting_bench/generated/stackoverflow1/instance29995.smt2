;test regex [*]{2}\s+server.*NXDOMAIN
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 2 2) (str.to_re "*")) (re.++ (re.+ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ (str.to_re "s") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (re.++ (str.to_re "v") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "N") (re.++ (str.to_re "X") (re.++ (str.to_re "D") (re.++ (str.to_re "O") (re.++ (str.to_re "M") (re.++ (str.to_re "A") (re.++ (str.to_re "I") (str.to_re "N")))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)