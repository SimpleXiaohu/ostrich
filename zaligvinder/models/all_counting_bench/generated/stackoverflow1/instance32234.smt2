;test regex (\d{4}\.\d\d\.\d\d) (.*?) felsz
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ (str.to_re ".") (re.++ (re.range "0" "9") (re.++ (re.range "0" "9") (re.++ (str.to_re ".") (re.++ (re.range "0" "9") (re.range "0" "9"))))))) (re.++ (str.to_re " ") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re " ") (re.++ (str.to_re "f") (re.++ (str.to_re "e") (re.++ (str.to_re "l") (re.++ (str.to_re "s") (str.to_re "z")))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)