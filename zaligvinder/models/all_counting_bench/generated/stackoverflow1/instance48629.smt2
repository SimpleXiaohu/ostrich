;test regex (^07[1,2,3,4,5,7,8,9][0-9]{7,8}$)
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "07") (re.++ (re.union (str.to_re "1") (re.union (str.to_re ",") (re.union (str.to_re "2") (re.union (str.to_re ",") (re.union (str.to_re "3") (re.union (str.to_re ",") (re.union (str.to_re "4") (re.union (str.to_re ",") (re.union (str.to_re "5") (re.union (str.to_re ",") (re.union (str.to_re "7") (re.union (str.to_re ",") (re.union (str.to_re "8") (re.union (str.to_re ",") (str.to_re "9"))))))))))))))) ((_ re.loop 7 8) (re.range "0" "9"))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)