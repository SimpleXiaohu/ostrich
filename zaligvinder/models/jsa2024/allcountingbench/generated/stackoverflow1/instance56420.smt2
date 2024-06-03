;test regex \<[ABC]\([a-zA-Z0-9]{4}\)\>
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "<") (re.++ (re.union (str.to_re "A") (re.union (str.to_re "B") (str.to_re "C"))) (re.++ (str.to_re "(") (re.++ ((_ re.loop 4 4) (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.range "0" "9")))) (re.++ (str.to_re ")") (str.to_re ">"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)