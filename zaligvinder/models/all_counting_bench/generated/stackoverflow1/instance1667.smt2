;test regex The total percentage is:([0-9]\d|\d{3,})%\W+Student passed the exam
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "T") (re.++ (str.to_re "h") (re.++ (str.to_re "e") (re.++ (str.to_re " ") (re.++ (str.to_re "t") (re.++ (str.to_re "o") (re.++ (str.to_re "t") (re.++ (str.to_re "a") (re.++ (str.to_re "l") (re.++ (str.to_re " ") (re.++ (str.to_re "p") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (re.++ (str.to_re "c") (re.++ (str.to_re "e") (re.++ (str.to_re "n") (re.++ (str.to_re "t") (re.++ (str.to_re "a") (re.++ (str.to_re "g") (re.++ (str.to_re "e") (re.++ (str.to_re " ") (re.++ (str.to_re "i") (re.++ (str.to_re "s") (re.++ (str.to_re ":") (re.++ (re.union (re.++ (re.range "0" "9") (re.range "0" "9")) (re.++ (re.* (re.range "0" "9")) ((_ re.loop 3 3) (re.range "0" "9")))) (re.++ (str.to_re "%") (re.++ (re.+ (re.inter (re.diff re.allchar (re.range "a" "z")) (re.inter (re.diff re.allchar (re.range "A" "Z")) (re.inter (re.diff re.allchar (re.range "0" "9")) (re.diff re.allchar (str.to_re "_")))))) (re.++ (str.to_re "S") (re.++ (str.to_re "t") (re.++ (str.to_re "u") (re.++ (str.to_re "d") (re.++ (str.to_re "e") (re.++ (str.to_re "n") (re.++ (str.to_re "t") (re.++ (str.to_re " ") (re.++ (str.to_re "p") (re.++ (str.to_re "a") (re.++ (str.to_re "s") (re.++ (str.to_re "s") (re.++ (str.to_re "e") (re.++ (str.to_re "d") (re.++ (str.to_re " ") (re.++ (str.to_re "t") (re.++ (str.to_re "h") (re.++ (str.to_re "e") (re.++ (str.to_re " ") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (str.to_re "a") (str.to_re "m"))))))))))))))))))))))))))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)