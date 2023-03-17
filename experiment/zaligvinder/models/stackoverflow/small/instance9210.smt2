;test regex ^[A-Za-z0-9+/]{42}[AEIMQUYcgkosw048]=$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ ((_ re.loop 42 42) (re.union (re.range "A" "Z") (re.union (re.range "a" "z") (re.union (re.range "0" "9") (re.union (str.to_re "+") (str.to_re "/")))))) (re.++ (re.union (str.to_re "A") (re.union (str.to_re "E") (re.union (str.to_re "I") (re.union (str.to_re "M") (re.union (str.to_re "Q") (re.union (str.to_re "U") (re.union (str.to_re "Y") (re.union (str.to_re "c") (re.union (str.to_re "g") (re.union (str.to_re "k") (re.union (str.to_re "o") (re.union (str.to_re "s") (re.union (str.to_re "w") (str.to_re "048")))))))))))))) (str.to_re "=")))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)