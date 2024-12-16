;test regex [a-z0-9]{5}[0-9]{6}[a-z0-9]{3}[a-z]{2}
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 5 5) (re.union (re.range "a" "z") (re.range "0" "9"))) (re.++ ((_ re.loop 6 6) (re.range "0" "9")) (re.++ ((_ re.loop 3 3) (re.union (re.range "a" "z") (re.range "0" "9"))) ((_ re.loop 2 2) (re.range "a" "z")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)