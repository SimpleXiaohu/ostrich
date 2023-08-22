;test regex (1[5-9])|([2-9][0-9])|([1-9][0-9]{2})
(declare-const X String)
(assert (str.in_re X (re.union (re.union (re.++ (str.to_re "1") (re.range "5" "9")) (re.++ (re.range "2" "9") (re.range "0" "9"))) (re.++ (re.range "1" "9") ((_ re.loop 2 2) (re.range "0" "9"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)