;test regex String RCARD1 = "[CDHS]{1}\\:\\d{1,2}[1-14]";
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "S") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "g") (re.++ (str.to_re " ") (re.++ (str.to_re "R") (re.++ (str.to_re "C") (re.++ (str.to_re "A") (re.++ (str.to_re "R") (re.++ (str.to_re "D") (re.++ (str.to_re "1") (re.++ (str.to_re " ") (re.++ (str.to_re "=") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{22}") (re.++ ((_ re.loop 1 1) (re.union (str.to_re "C") (re.union (str.to_re "D") (re.union (str.to_re "H") (str.to_re "S"))))) (re.++ (str.to_re "\\") (re.++ (str.to_re ":") (re.++ (str.to_re "\\") (re.++ ((_ re.loop 1 2) (str.to_re "d")) (re.++ (re.range "1" "14") (re.++ (str.to_re "\u{22}") (str.to_re ";")))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)