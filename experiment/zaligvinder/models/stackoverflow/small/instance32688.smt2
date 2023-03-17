;test regex ^([1-9]|([012][0-9])|(3[01]))\-([0]{0,1}[1-9]|1[012])\-\d\d\d\d\s([0-1]?[0-9]|2?[0-3]):([0-5]\d)$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.union (re.union (re.range "1" "9") (re.++ (str.to_re "012") (re.range "0" "9"))) (re.++ (str.to_re "3") (str.to_re "01"))) (re.++ (str.to_re "-") (re.++ (re.union (re.++ ((_ re.loop 0 1) (str.to_re "0")) (re.range "1" "9")) (re.++ (str.to_re "1") (str.to_re "012"))) (re.++ (str.to_re "-") (re.++ (re.range "0" "9") (re.++ (re.range "0" "9") (re.++ (re.range "0" "9") (re.++ (re.range "0" "9") (re.++ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) (re.++ (re.union (re.++ (re.opt (re.range "0" "1")) (re.range "0" "9")) (re.++ (re.opt (str.to_re "2")) (re.range "0" "3"))) (re.++ (str.to_re ":") (re.++ (re.range "0" "5") (re.range "0" "9")))))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)