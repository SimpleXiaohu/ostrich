;test regex ^Dax([0-9].[0-9]{3})
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "") (re.++ (str.to_re "D") (re.++ (str.to_re "a") (re.++ (str.to_re "x") (re.++ (re.range "0" "9") (re.++ (re.diff re.allchar (str.to_re "\n")) ((_ re.loop 3 3) (re.range "0" "9"))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)