;test regex (\d.\d) star rating\n.*?\n.*?\n.*?\n[^,]*, ([A-Z]{2}).*Parking: (Yes|No)
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (re.range "0" "9") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.range "0" "9"))) (re.++ (str.to_re " ") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (re.++ (str.to_re " ") (re.++ (str.to_re "r") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "g") (re.++ (str.to_re "\u{0a}") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "\u{0a}") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "\u{0a}") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "\u{0a}") (re.* (re.diff re.allchar (str.to_re ","))))))))))))))))))))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ ((_ re.loop 2 2) (re.range "A" "Z")) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "P") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (re.++ (str.to_re "k") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "g") (re.++ (str.to_re ":") (re.++ (str.to_re " ") (re.union (re.++ (str.to_re "Y") (re.++ (str.to_re "e") (str.to_re "s"))) (re.++ (str.to_re "N") (str.to_re "o")))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)