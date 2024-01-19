;test regex (\D+|^)(4321[5-9][7-9]{6})(\D+|$)
(declare-const X String)
(assert (str.in_re X (re.++ (re.union (re.+ (re.diff re.allchar (re.range "0" "9"))) (str.to_re "")) (re.++ (re.++ (str.to_re "4321") (re.++ (re.range "5" "9") ((_ re.loop 6 6) (re.range "7" "9")))) (re.union (re.+ (re.diff re.allchar (re.range "0" "9"))) (str.to_re ""))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)