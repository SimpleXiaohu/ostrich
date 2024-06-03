;test regex ( ([a-zA-Z])|(\d)|(@#\$_) ){4,6}
(declare-const X String)
(assert (str.in_re X ((_ re.loop 4 6) (re.union (re.union (re.++ (str.to_re " ") (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.range "0" "9")) (re.++ (re.++ (str.to_re "@") (re.++ (str.to_re "#") (re.++ (str.to_re "$") (str.to_re "_")))) (str.to_re " "))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)