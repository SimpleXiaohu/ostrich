;test regex /^([a-z0-9]*:|.{0})\/\/.*$/gmi
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "/") (re.++ (str.to_re "") (re.++ (re.union (re.++ (re.* (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re ":")) ((_ re.loop 0 0) (re.diff re.allchar (str.to_re "\n")))) (re.++ (str.to_re "/") (re.++ (str.to_re "/") (re.* (re.diff re.allchar (str.to_re "\n")))))))) (re.++ (str.to_re "") (re.++ (str.to_re "/") (re.++ (str.to_re "g") (re.++ (str.to_re "m") (str.to_re "i"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)