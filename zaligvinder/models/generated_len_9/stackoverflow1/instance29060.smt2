;test regex "Hello World" -replace '.*(World)','${1}1'
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "H") (re.++ (str.to_re "e") (re.++ (str.to_re "l") (re.++ (str.to_re "l") (re.++ (str.to_re "o") (re.++ (str.to_re " ") (re.++ (str.to_re "W") (re.++ (str.to_re "o") (re.++ (str.to_re "r") (re.++ (str.to_re "l") (re.++ (str.to_re "d") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "p") (re.++ (str.to_re "l") (re.++ (str.to_re "a") (re.++ (str.to_re "c") (re.++ (str.to_re "e") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{27}") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (re.++ (str.to_re "W") (re.++ (str.to_re "o") (re.++ (str.to_re "r") (re.++ (str.to_re "l") (str.to_re "d"))))) (str.to_re "\u{27}"))))))))))))))))))))))))))) (re.++ (str.to_re ",") (str.to_re "\u{27}"))) (re.++ ((_ re.loop 1 1) (str.to_re "")) (re.++ (str.to_re "1") (str.to_re "\u{27}"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)