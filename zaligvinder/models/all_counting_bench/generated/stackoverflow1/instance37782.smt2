;test regex ^ \(([^P)])\) \d{3}-\d{3}-\d{4} \u2022 \(([^F)])\) \d{3}-\d{3}-\d{4} *$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (str.to_re " ") (re.++ (str.to_re "(") (re.++ (re.inter (re.diff re.allchar (str.to_re "P")) (re.diff re.allchar (str.to_re ")"))) (re.++ (str.to_re ")") (re.++ (str.to_re " ") (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.++ (str.to_re "-") (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.++ (str.to_re "-") (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ (str.to_re " ") (re.++ (str.to_re "\u{2022}") (re.++ (str.to_re " ") (re.++ (str.to_re "(") (re.++ (re.inter (re.diff re.allchar (str.to_re "F")) (re.diff re.allchar (str.to_re ")"))) (re.++ (str.to_re ")") (re.++ (str.to_re " ") (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.++ (str.to_re "-") (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.++ (str.to_re "-") (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.* (str.to_re " "))))))))))))))))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)