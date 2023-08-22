;test regex ^[0-9]{1,7} [a-zA-z0-9]{2,35}\a*
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "") (re.++ ((_ re.loop 1 7) (re.range "0" "9")) (re.++ (str.to_re " ") (re.++ ((_ re.loop 2 35) (re.union (re.range "a" "z") (re.union (re.range "A" "z") (re.range "0" "9")))) (re.* (str.to_re "a"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)