;test regex ^([^0900000000-009499999]|[^0900000000-094000000]|\d{9}|\d{1}|\d{2}|\d{3}|\d{4}|\d{5}|\d{6}|\d{7}|\d{8})$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.diff re.allchar (re.range "0900000000" "009499999")) (re.diff re.allchar (re.range "0900000000" "094000000"))) ((_ re.loop 9 9) (re.range "0" "9"))) ((_ re.loop 1 1) (re.range "0" "9"))) ((_ re.loop 2 2) (re.range "0" "9"))) ((_ re.loop 3 3) (re.range "0" "9"))) ((_ re.loop 4 4) (re.range "0" "9"))) ((_ re.loop 5 5) (re.range "0" "9"))) ((_ re.loop 6 6) (re.range "0" "9"))) ((_ re.loop 7 7) (re.range "0" "9"))) ((_ re.loop 8 8) (re.range "0" "9")))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)