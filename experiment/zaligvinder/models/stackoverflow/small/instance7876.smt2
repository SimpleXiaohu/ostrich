;test regex ^(\+7)[()0-9-]{16}$/gmi
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.++ (str.to_re "+") (str.to_re "7")) ((_ re.loop 16 16) (re.union (str.to_re "(") (re.union (str.to_re ")") (re.union (re.range "0" "9") (str.to_re "-"))))))) (re.++ (str.to_re "") (re.++ (str.to_re "/") (re.++ (str.to_re "g") (re.++ (str.to_re "m") (str.to_re "i"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)