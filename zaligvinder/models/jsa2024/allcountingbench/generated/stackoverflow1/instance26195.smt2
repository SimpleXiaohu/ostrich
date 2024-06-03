;test regex 0*(1([1-9][0-9]|[0-9]{3})|[2-9][0-9]{2}|2([01][0-9]{2}|2([0-2][0-9]|3[0-4])))
(declare-const X String)
(assert (str.in_re X (re.++ (re.* (str.to_re "0")) (re.union (re.union (re.++ (str.to_re "1") (re.union (re.++ (re.range "1" "9") (re.range "0" "9")) ((_ re.loop 3 3) (re.range "0" "9")))) (re.++ (re.range "2" "9") ((_ re.loop 2 2) (re.range "0" "9")))) (re.++ (str.to_re "2") (re.union (re.++ (str.to_re "01") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to_re "2") (re.union (re.++ (re.range "0" "2") (re.range "0" "9")) (re.++ (str.to_re "3") (re.range "0" "4"))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)