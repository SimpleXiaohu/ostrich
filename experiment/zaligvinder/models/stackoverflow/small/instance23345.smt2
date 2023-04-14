;test regex [ace-z]{5,}
(declare-const X String)
(assert (str.in_re X (re.++ (re.* (re.union (str.to_re "a") (re.union (str.to_re "c") (re.range "e" "z")))) ((_ re.loop 5 5) (re.union (str.to_re "a") (re.union (str.to_re "c") (re.range "e" "z")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)