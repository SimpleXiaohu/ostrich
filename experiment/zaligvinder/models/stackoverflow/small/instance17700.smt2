;test regex HEX(col) REGEXP '(..)*(D7..){4}-(D7..|20)+-(D7..|20)+-(3.)+'
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "H") (re.++ (str.to_re "E") (re.++ (str.to_re "X") (re.++ (re.++ (str.to_re "c") (re.++ (str.to_re "o") (str.to_re "l"))) (re.++ (str.to_re " ") (re.++ (str.to_re "R") (re.++ (str.to_re "E") (re.++ (str.to_re "G") (re.++ (str.to_re "E") (re.++ (str.to_re "X") (re.++ (str.to_re "P") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{27}") (re.++ (re.* (re.++ (re.diff re.allchar (str.to_re "\n")) (re.diff re.allchar (str.to_re "\n")))) (re.++ ((_ re.loop 4 4) (re.++ (str.to_re "D") (re.++ (str.to_re "7") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.diff re.allchar (str.to_re "\n")))))) (re.++ (str.to_re "-") (re.++ (re.+ (re.union (re.++ (str.to_re "D") (re.++ (str.to_re "7") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.diff re.allchar (str.to_re "\n"))))) (str.to_re "20"))) (re.++ (str.to_re "-") (re.++ (re.+ (re.union (re.++ (str.to_re "D") (re.++ (str.to_re "7") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.diff re.allchar (str.to_re "\n"))))) (str.to_re "20"))) (re.++ (str.to_re "-") (re.++ (re.+ (re.++ (str.to_re "3") (re.diff re.allchar (str.to_re "\n")))) (str.to_re "\u{27}"))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)