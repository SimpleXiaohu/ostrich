;test regex ^(.{0,2}|([^A]..|A[^B].|AB[^C])|.{4,})$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.union (re.union ((_ re.loop 0 2) (re.diff re.allchar (str.to_re "\n"))) (re.union (re.union (re.++ (re.diff re.allchar (str.to_re "A")) (re.++ (re.diff re.allchar (str.to_re "\n")) (re.diff re.allchar (str.to_re "\n")))) (re.++ (str.to_re "A") (re.++ (re.diff re.allchar (str.to_re "B")) (re.diff re.allchar (str.to_re "\n"))))) (re.++ (str.to_re "A") (re.++ (str.to_re "B") (re.diff re.allchar (str.to_re "C")))))) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) ((_ re.loop 4 4) (re.diff re.allchar (str.to_re "\n")))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)