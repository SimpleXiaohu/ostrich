;test regex [a-z0-9 ]{6}[^*]\s*(program-id)\..*
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 6 6) (re.union (re.range "a" "z") (re.union (re.range "0" "9") (str.to_re " ")))) (re.++ (re.diff re.allchar (str.to_re "*")) (re.++ (re.* (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ (re.++ (str.to_re "p") (re.++ (str.to_re "r") (re.++ (str.to_re "o") (re.++ (str.to_re "g") (re.++ (str.to_re "r") (re.++ (str.to_re "a") (re.++ (str.to_re "m") (re.++ (str.to_re "-") (re.++ (str.to_re "i") (str.to_re "d")))))))))) (re.++ (str.to_re ".") (re.* (re.diff re.allchar (str.to_re "\n"))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)