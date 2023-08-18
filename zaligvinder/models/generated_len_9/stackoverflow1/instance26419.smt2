;test regex sed -rn 's/.*(([A-Z]{1,2}[0-9]{1,2}|[A-Z]{1,2}[0-9][A-Z]) [0-9][A-Z]{2}).*/\1/p'
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "s") (re.++ (str.to_re "e") (re.++ (str.to_re "d") (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re "r") (re.++ (str.to_re "n") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "s") (re.++ (str.to_re "/") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (re.++ (re.union (re.++ ((_ re.loop 1 2) (re.range "A" "Z")) ((_ re.loop 1 2) (re.range "0" "9"))) (re.++ ((_ re.loop 1 2) (re.range "A" "Z")) (re.++ (re.range "0" "9") (re.range "A" "Z")))) (re.++ (str.to_re " ") (re.++ (re.range "0" "9") ((_ re.loop 2 2) (re.range "A" "Z"))))) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "/") (re.++ (_ re.reference 1) (re.++ (str.to_re "/") (re.++ (str.to_re "p") (str.to_re "\u{27}")))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)