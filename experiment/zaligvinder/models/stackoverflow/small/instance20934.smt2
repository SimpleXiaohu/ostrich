;test regex ((?:2[0-5][0-5]|1\d\d|\d{1,2})\.(?:2[0-5][0-5]|1\d\d|\d{1,2})\.(?:2[0-5][0-5]|1\d\d|\d{1,2})\.(?:2[0-5][0-5]|1[^2][^7]|\d{1,2}))$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.union (re.union (re.++ (str.to_re "2") (re.++ (re.range "0" "5") (re.range "0" "5"))) (re.++ (str.to_re "1") (re.++ (re.range "0" "9") (re.range "0" "9")))) ((_ re.loop 1 2) (re.range "0" "9"))) (re.++ (str.to_re ".") (re.++ (re.union (re.union (re.++ (str.to_re "2") (re.++ (re.range "0" "5") (re.range "0" "5"))) (re.++ (str.to_re "1") (re.++ (re.range "0" "9") (re.range "0" "9")))) ((_ re.loop 1 2) (re.range "0" "9"))) (re.++ (str.to_re ".") (re.++ (re.union (re.union (re.++ (str.to_re "2") (re.++ (re.range "0" "5") (re.range "0" "5"))) (re.++ (str.to_re "1") (re.++ (re.range "0" "9") (re.range "0" "9")))) ((_ re.loop 1 2) (re.range "0" "9"))) (re.++ (str.to_re ".") (re.union (re.union (re.++ (str.to_re "2") (re.++ (re.range "0" "5") (re.range "0" "5"))) (re.++ (str.to_re "1") (re.++ (re.diff re.allchar (str.to_re "2")) (re.diff re.allchar (str.to_re "7"))))) ((_ re.loop 1 2) (re.range "0" "9"))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)