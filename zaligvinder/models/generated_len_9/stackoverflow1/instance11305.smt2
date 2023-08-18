;test regex "2/-4+5.7*5*-7.9+3".split(/[\/\-\+\*]{1,}/)
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "2") (re.++ (str.to_re "/") (re.++ (str.to_re "-") (re.++ (re.+ (str.to_re "4")) (re.++ (str.to_re "5") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (re.* (str.to_re "7")) (re.++ (re.* (str.to_re "5")) (re.++ (str.to_re "-") (re.++ (str.to_re "7") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (re.+ (str.to_re "9")) (re.++ (str.to_re "3") (re.++ (str.to_re "\u{22}") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "s") (re.++ (str.to_re "p") (re.++ (str.to_re "l") (re.++ (str.to_re "i") (re.++ (str.to_re "t") (re.++ (str.to_re "/") (re.++ (re.++ (re.* (re.union (str.to_re "/") (re.union (str.to_re "-") (re.union (str.to_re "+") (str.to_re "*"))))) ((_ re.loop 1 1) (re.union (str.to_re "/") (re.union (str.to_re "-") (re.union (str.to_re "+") (str.to_re "*")))))) (str.to_re "/"))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)