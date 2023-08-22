;test regex "\\b[0-9]{3}\\b.*(Street).*[0-9]{5}"
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "\\") (re.++ (str.to_re "b") (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.++ (str.to_re "\\") (re.++ (str.to_re "b") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (re.++ (str.to_re "S") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "e") (str.to_re "t")))))) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (str.to_re "\u{22}")))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)