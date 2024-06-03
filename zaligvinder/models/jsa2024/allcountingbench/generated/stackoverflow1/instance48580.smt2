;test regex /([0-9a-f]{2})/${1}:/gi
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "/") (re.++ ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "a" "f"))) (str.to_re "/"))) (re.++ ((_ re.loop 1 1) (str.to_re "")) (re.++ (str.to_re ":") (re.++ (str.to_re "/") (re.++ (str.to_re "g") (str.to_re "i"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)