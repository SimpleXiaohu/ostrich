;test regex \\\\cellX US [0-9]{1,}(?:.*[\r\n]+){4}\\\\cellX US [0-9]{1,}.*
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "\\") (re.++ (str.to_re "\\") (re.++ (str.to_re "c") (re.++ (str.to_re "e") (re.++ (str.to_re "l") (re.++ (str.to_re "l") (re.++ (str.to_re "X") (re.++ (str.to_re " ") (re.++ (str.to_re "U") (re.++ (str.to_re "S") (re.++ (str.to_re " ") (re.++ (re.++ (re.* (re.range "0" "9")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ ((_ re.loop 4 4) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.+ (re.union (str.to_re "\u{0d}") (str.to_re "\u{0a}"))))) (re.++ (str.to_re "\\") (re.++ (str.to_re "\\") (re.++ (str.to_re "c") (re.++ (str.to_re "e") (re.++ (str.to_re "l") (re.++ (str.to_re "l") (re.++ (str.to_re "X") (re.++ (str.to_re " ") (re.++ (str.to_re "U") (re.++ (str.to_re "S") (re.++ (str.to_re " ") (re.++ (re.++ (re.* (re.range "0" "9")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.* (re.diff re.allchar (str.to_re "\n"))))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)