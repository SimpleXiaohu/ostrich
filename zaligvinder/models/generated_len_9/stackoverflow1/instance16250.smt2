;test regex "(ADJ-\d{1,3}-\d{1,3}-\d{1,3})::.*?SPANLOSSMARGIN=(\d{1,2}.\d{1,2})
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "\u{22}") (re.++ (re.++ (str.to_re "A") (re.++ (str.to_re "D") (re.++ (str.to_re "J") (re.++ (str.to_re "-") (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.++ (str.to_re "-") (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.++ (str.to_re "-") ((_ re.loop 1 3) (re.range "0" "9")))))))))) (re.++ (str.to_re ":") (re.++ (str.to_re ":") (re.++ (re.*? (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "S") (re.++ (str.to_re "P") (re.++ (str.to_re "A") (re.++ (str.to_re "N") (re.++ (str.to_re "L") (re.++ (str.to_re "O") (re.++ (str.to_re "S") (re.++ (str.to_re "S") (re.++ (str.to_re "M") (re.++ (str.to_re "A") (re.++ (str.to_re "R") (re.++ (str.to_re "G") (re.++ (str.to_re "I") (re.++ (str.to_re "N") (re.++ (str.to_re "=") (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.++ (re.diff re.allchar (str.to_re "\n")) ((_ re.loop 1 2) (re.range "0" "9"))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)