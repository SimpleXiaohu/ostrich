;test regex find 20*/ | grep -P "(\d+_){3}\d+\.pdf" | wc -l
(declare-const X String)
(assert (str.in_re X (re.union (re.union (re.++ (str.to_re "f") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "d") (re.++ (str.to_re " ") (re.++ (re.* (str.to_re "20")) (re.++ (str.to_re "/") (str.to_re " ")))))))) (re.++ (str.to_re " ") (re.++ (str.to_re "g") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "p") (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re "P") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{22}") (re.++ ((_ re.loop 3 3) (re.++ (re.+ (re.range "0" "9")) (str.to_re "_"))) (re.++ (re.+ (re.range "0" "9")) (re.++ (str.to_re ".") (re.++ (str.to_re "p") (re.++ (str.to_re "d") (re.++ (str.to_re "f") (re.++ (str.to_re "\u{22}") (str.to_re " "))))))))))))))))))) (re.++ (str.to_re " ") (re.++ (str.to_re "w") (re.++ (str.to_re "c") (re.++ (str.to_re " ") (re.++ (str.to_re "-") (str.to_re "l")))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)