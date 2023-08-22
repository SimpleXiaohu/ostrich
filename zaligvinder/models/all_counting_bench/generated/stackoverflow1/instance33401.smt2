;test regex \d[a-fA-F\d]\d{4}[a-fA-F\d][a-fA-F]
(declare-const X String)
(assert (str.in_re X (re.++ (re.range "0" "9") (re.++ (re.union (re.range "a" "f") (re.union (re.range "A" "F") (re.range "0" "9"))) (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ (re.union (re.range "a" "f") (re.union (re.range "A" "F") (re.range "0" "9"))) (re.union (re.range "a" "f") (re.range "A" "F"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)