;test regex (Quantity.*)(\d{1,})
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "Q") (re.++ (str.to_re "u") (re.++ (str.to_re "a") (re.++ (str.to_re "n") (re.++ (str.to_re "t") (re.++ (str.to_re "i") (re.++ (str.to_re "t") (re.++ (str.to_re "y") (re.* (re.diff re.allchar (str.to_re "\n"))))))))))) (re.++ (re.* (re.range "0" "9")) ((_ re.loop 1 1) (re.range "0" "9"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)