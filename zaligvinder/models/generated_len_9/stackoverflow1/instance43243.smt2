;test regex at widget.List.([a-zA-Z]+).([A-Za-z]+\.java).(\d{3,4}).
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (str.to_re " ") (re.++ (str.to_re "w") (re.++ (str.to_re "i") (re.++ (str.to_re "d") (re.++ (str.to_re "g") (re.++ (str.to_re "e") (re.++ (str.to_re "t") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "L") (re.++ (str.to_re "i") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (re.++ (re.+ (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.++ (str.to_re ".") (re.++ (str.to_re "j") (re.++ (str.to_re "a") (re.++ (str.to_re "v") (str.to_re "a")))))) (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ ((_ re.loop 3 4) (re.range "0" "9")) (re.diff re.allchar (str.to_re "\n"))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)