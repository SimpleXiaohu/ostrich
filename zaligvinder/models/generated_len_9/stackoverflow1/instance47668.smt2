;test regex (0,((\d[1-9])|([1-9]\d)))|((([1-9]\d{0,2}(\.\d{3}){0,3})|([1-9](\.\d{3}){4})),\d{2})
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (str.to_re "0") (re.++ (str.to_re ",") (re.union (re.++ (re.range "0" "9") (re.range "1" "9")) (re.++ (re.range "1" "9") (re.range "0" "9"))))) (re.++ (re.union (re.++ (re.range "1" "9") (re.++ ((_ re.loop 0 2) (re.range "0" "9")) ((_ re.loop 0 3) (re.++ (str.to_re ".") ((_ re.loop 3 3) (re.range "0" "9")))))) (re.++ (re.range "1" "9") ((_ re.loop 4 4) (re.++ (str.to_re ".") ((_ re.loop 3 3) (re.range "0" "9")))))) (re.++ (str.to_re ",") ((_ re.loop 2 2) (re.range "0" "9")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)