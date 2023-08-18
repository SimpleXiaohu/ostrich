;test regex (\[0-9\]{3}\.)(.*)(\-\[0-9\]{4})
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "[") (re.++ (str.to_re "0") (re.++ (str.to_re "-") (re.++ (str.to_re "9") (re.++ ((_ re.loop 3 3) (str.to_re "]")) (str.to_re ".")))))) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "-") (re.++ (str.to_re "[") (re.++ (str.to_re "0") (re.++ (str.to_re "-") (re.++ (str.to_re "9") ((_ re.loop 4 4) (str.to_re "]")))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)