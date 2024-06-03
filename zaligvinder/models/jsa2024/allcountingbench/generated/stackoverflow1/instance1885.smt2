;test regex (\d|[a-z]|[A-Z]|@#$...){8,20}
(declare-const X String)
(assert (str.in_re X ((_ re.loop 8 20) (re.union (re.union (re.union (re.range "0" "9") (re.range "a" "z")) (re.range "A" "Z")) (re.++ (re.++ (str.to_re "@") (str.to_re "#")) (re.++ (str.to_re "") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (re.diff re.allchar (str.to_re "\n")) (re.diff re.allchar (str.to_re "\n"))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)