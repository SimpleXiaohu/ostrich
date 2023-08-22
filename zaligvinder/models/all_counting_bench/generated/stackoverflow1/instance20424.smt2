;test regex '\$1,\d{3}|\$2,000'
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "$") (str.to_re "1"))) (re.++ (str.to_re ",") ((_ re.loop 3 3) (re.range "0" "9")))) (re.++ (re.++ (str.to_re "$") (str.to_re "2")) (re.++ (str.to_re ",") (re.++ (str.to_re "000") (str.to_re "\u{27}")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)