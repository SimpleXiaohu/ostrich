;test regex (\d-(?:\d{3}-){2}(?:(?:(\d)\2{3})|(?:\d(\d)\3{2})|(?:\d0\d0)))
(declare-const X String)
(assert (str.in_re X (re.++ (re.range "0" "9") (re.++ (str.to_re "-") (re.++ ((_ re.loop 2 2) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "-"))) (re.union (re.union (re.++ (re.range "0" "9") ((_ re.loop 3 3) (_ re.reference 2))) (re.++ (re.range "0" "9") (re.++ (re.range "0" "9") ((_ re.loop 2 2) (_ re.reference 3))))) (re.++ (re.range "0" "9") (re.++ (str.to_re "0") (re.++ (re.range "0" "9") (str.to_re "0"))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)