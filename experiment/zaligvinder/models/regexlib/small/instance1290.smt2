;test regex (:[a-z]{1}[a-z1-9\$#_]*){1,31}
(declare-const X String)
(assert (str.in_re X ((_ re.loop 1 31) (re.++ (str.to_re ":") (re.++ ((_ re.loop 1 1) (re.range "a" "z")) (re.* (re.union (re.range "a" "z") (re.union (re.range "1" "9") (re.union (str.to_re "$") (re.union (str.to_re "#") (str.to_re "_")))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)