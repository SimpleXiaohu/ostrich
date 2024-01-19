;test regex (\e\[([1-9]|[1,2,4,5,6,7,8]{2}m))
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "e") (re.++ (str.to_re "[") (re.union (re.range "1" "9") (re.++ ((_ re.loop 2 2) (re.union (str.to_re "1") (re.union (str.to_re ",") (re.union (str.to_re "2") (re.union (str.to_re ",") (re.union (str.to_re "4") (re.union (str.to_re ",") (re.union (str.to_re "5") (re.union (str.to_re ",") (re.union (str.to_re "6") (re.union (str.to_re ",") (re.union (str.to_re "7") (re.union (str.to_re ",") (str.to_re "8")))))))))))))) (str.to_re "m")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)