;test regex \A[a-z]{2,3}\\[a-z0-9]{7,8}\z
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "A") (re.++ ((_ re.loop 2 3) (re.range "a" "z")) (re.++ (str.to_re "\\") (re.++ ((_ re.loop 7 8) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re "z")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)