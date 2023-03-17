;test regex find . * | grep -P "[a-f0-9\-]{36}\.jpg"
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (str.to_re "f") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "d") (re.++ (str.to_re " ") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (re.* (str.to_re " ")) (str.to_re " ")))))))) (re.++ (str.to_re " ") (re.++ (str.to_re "g") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "p") (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re "P") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{22}") (re.++ ((_ re.loop 36 36) (re.union (re.range "a" "f") (re.union (re.range "0" "9") (str.to_re "-")))) (re.++ (str.to_re ".") (re.++ (str.to_re "j") (re.++ (str.to_re "p") (re.++ (str.to_re "g") (str.to_re "\u{22}")))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)