;test regex (date of birth)[^\d]*((?:\d{2}-){2}\d{4})
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "d") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re " ") (re.++ (str.to_re "o") (re.++ (str.to_re "f") (re.++ (str.to_re " ") (re.++ (str.to_re "b") (re.++ (str.to_re "i") (re.++ (str.to_re "r") (re.++ (str.to_re "t") (str.to_re "h"))))))))))))) (re.++ (re.* (re.diff re.allchar (re.range "0" "9"))) (re.++ ((_ re.loop 2 2) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "-"))) ((_ re.loop 4 4) (re.range "0" "9")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)