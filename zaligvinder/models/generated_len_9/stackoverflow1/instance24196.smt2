;test regex ((\d{0,3}((\.\d{3})){0,2}),\d{2})ZW-Sum
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ ((_ re.loop 0 3) (re.range "0" "9")) ((_ re.loop 0 2) (re.++ (str.to_re ".") ((_ re.loop 3 3) (re.range "0" "9"))))) (re.++ (str.to_re ",") ((_ re.loop 2 2) (re.range "0" "9")))) (re.++ (str.to_re "Z") (re.++ (str.to_re "W") (re.++ (str.to_re "-") (re.++ (str.to_re "S") (re.++ (str.to_re "u") (str.to_re "m")))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)