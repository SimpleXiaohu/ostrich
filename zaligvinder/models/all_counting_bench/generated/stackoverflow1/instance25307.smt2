;test regex [a-z]*([damn])\\1{1,}[a-z]*
(declare-const X String)
(assert (str.in_re X (re.++ (re.* (re.range "a" "z")) (re.++ (re.union (str.to_re "d") (re.union (str.to_re "a") (re.union (str.to_re "m") (str.to_re "n")))) (re.++ (str.to_re "\\") (re.++ (re.++ (re.* (str.to_re "1")) ((_ re.loop 1 1) (str.to_re "1"))) (re.* (re.range "a" "z"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)