;test regex ^(?:JAN|FEB|MAR|APR|MAY|JUN|JUL|AUG|SEP|OCT|NOV|DEC) \d{4}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.++ (str.to_re "J") (re.++ (str.to_re "A") (str.to_re "N"))) (re.++ (str.to_re "F") (re.++ (str.to_re "E") (str.to_re "B")))) (re.++ (str.to_re "M") (re.++ (str.to_re "A") (str.to_re "R")))) (re.++ (str.to_re "A") (re.++ (str.to_re "P") (str.to_re "R")))) (re.++ (str.to_re "M") (re.++ (str.to_re "A") (str.to_re "Y")))) (re.++ (str.to_re "J") (re.++ (str.to_re "U") (str.to_re "N")))) (re.++ (str.to_re "J") (re.++ (str.to_re "U") (str.to_re "L")))) (re.++ (str.to_re "A") (re.++ (str.to_re "U") (str.to_re "G")))) (re.++ (str.to_re "S") (re.++ (str.to_re "E") (str.to_re "P")))) (re.++ (str.to_re "O") (re.++ (str.to_re "C") (str.to_re "T")))) (re.++ (str.to_re "N") (re.++ (str.to_re "O") (str.to_re "V")))) (re.++ (str.to_re "D") (re.++ (str.to_re "E") (str.to_re "C")))) (re.++ (str.to_re " ") ((_ re.loop 4 4) (re.range "0" "9"))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)