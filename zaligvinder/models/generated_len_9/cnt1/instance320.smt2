;test regex (?:\d{11}-)\d{2}-[a-zA-Z_0-9]{4}-\d{1,8}
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ ((_ re.loop 11 11) (re.range "0" "9")) (str.to_re "-")) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (str.to_re "-") (re.++ ((_ re.loop 4 4) (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (str.to_re "_") (re.range "0" "9"))))) (re.++ (str.to_re "-") ((_ re.loop 1 8) (re.range "0" "9")))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)