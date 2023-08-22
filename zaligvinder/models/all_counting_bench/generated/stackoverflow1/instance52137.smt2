;test regex [^0-9][03|923][0-9]{9}
(declare-const X String)
(assert (str.in_re X (re.++ (re.diff re.allchar (re.range "0" "9")) (re.++ (re.union (str.to_re "03") (re.union (str.to_re "|") (str.to_re "923"))) ((_ re.loop 9 9) (re.range "0" "9"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)