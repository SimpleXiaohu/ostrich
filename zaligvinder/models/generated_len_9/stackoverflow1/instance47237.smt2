;test regex ^.{3}(?:1.*[A-C]|2.*[D-F]|3.*[G-I])$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ ((_ re.loop 3 3) (re.diff re.allchar (str.to_re "\n"))) (re.union (re.union (re.++ (str.to_re "1") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.range "A" "C"))) (re.++ (str.to_re "2") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.range "D" "F")))) (re.++ (str.to_re "3") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.range "G" "I")))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)