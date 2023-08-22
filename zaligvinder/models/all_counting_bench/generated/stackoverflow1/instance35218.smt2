;test regex .{5}-([0-9a-zA-Z]{6})-.-([A-Z]{2})-([0-9]{5})
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 5 5) (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "-") (re.++ ((_ re.loop 6 6) (re.union (re.range "0" "9") (re.union (re.range "a" "z") (re.range "A" "Z")))) (re.++ (str.to_re "-") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "-") (re.++ ((_ re.loop 2 2) (re.range "A" "Z")) (re.++ (str.to_re "-") ((_ re.loop 5 5) (re.range "0" "9"))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)