;test regex Lorem.*CEP \d+\/[AB]{2}
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "L") (re.++ (str.to_re "o") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "m") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "C") (re.++ (str.to_re "E") (re.++ (str.to_re "P") (re.++ (str.to_re " ") (re.++ (re.+ (re.range "0" "9")) (re.++ (str.to_re "/") ((_ re.loop 2 2) (re.union (str.to_re "A") (str.to_re "B")))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)