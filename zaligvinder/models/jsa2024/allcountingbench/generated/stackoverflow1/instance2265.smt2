;test regex find -E . -regex '.*/.{5}0{4}.*'
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "f") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "d") (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re "E") (re.++ (str.to_re " ") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "g") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{27}") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "/") (re.++ ((_ re.loop 5 5) (re.diff re.allchar (str.to_re "\n"))) (re.++ ((_ re.loop 4 4) (str.to_re "0")) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (str.to_re "\u{27}"))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)