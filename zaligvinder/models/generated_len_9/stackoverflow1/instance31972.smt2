;test regex ValidationExpression="^[a-zA-Z]*\(\.{1}[a-zA-Z]*\)?$"
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (str.to_re "V") (re.++ (str.to_re "a") (re.++ (str.to_re "l") (re.++ (str.to_re "i") (re.++ (str.to_re "d") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (str.to_re "i") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (re.++ (str.to_re "E") (re.++ (str.to_re "x") (re.++ (str.to_re "p") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "s") (re.++ (str.to_re "s") (re.++ (str.to_re "i") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (re.++ (str.to_re "=") (str.to_re "\u{22}")))))))))))))))))))))) (re.++ (str.to_re "") (re.++ (re.* (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.++ (str.to_re "(") (re.++ ((_ re.loop 1 1) (str.to_re ".")) (re.++ (re.* (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.opt (str.to_re ")")))))))) (re.++ (str.to_re "") (str.to_re "\u{22}")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)