;test regex <airTemperature>(\d{1,2}.\d{1})<\/airTemperature>
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "<") (re.++ (str.to_re "a") (re.++ (str.to_re "i") (re.++ (str.to_re "r") (re.++ (str.to_re "T") (re.++ (str.to_re "e") (re.++ (str.to_re "m") (re.++ (str.to_re "p") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (str.to_re "u") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re ">") (re.++ (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.++ (re.diff re.allchar (str.to_re "\n")) ((_ re.loop 1 1) (re.range "0" "9")))) (re.++ (str.to_re "<") (re.++ (str.to_re "/") (re.++ (str.to_re "a") (re.++ (str.to_re "i") (re.++ (str.to_re "r") (re.++ (str.to_re "T") (re.++ (str.to_re "e") (re.++ (str.to_re "m") (re.++ (str.to_re "p") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (str.to_re "u") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (str.to_re ">"))))))))))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)