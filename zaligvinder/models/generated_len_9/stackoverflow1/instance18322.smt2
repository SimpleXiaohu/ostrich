;test regex (?:~[A-Z](~[A-Z])){5,15}
(declare-const X String)
(assert (str.in_re X ((_ re.loop 5 15) (re.++ (str.to_re "~") (re.++ (re.range "A" "Z") (re.++ (str.to_re "~") (re.range "A" "Z")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)