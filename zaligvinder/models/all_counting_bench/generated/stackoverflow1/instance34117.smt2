;test regex ^[0-9A-F]{8}-[0-9A-F]{4}-[3][0-9A-F]{3}-[89AB][0-9A-F]{3}-[0-9A-F]{12}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ ((_ re.loop 8 8) (re.union (re.range "0" "9") (re.range "A" "F"))) (re.++ (str.to_re "-") (re.++ ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "A" "F"))) (re.++ (str.to_re "-") (re.++ (str.to_re "3") (re.++ ((_ re.loop 3 3) (re.union (re.range "0" "9") (re.range "A" "F"))) (re.++ (str.to_re "-") (re.++ (re.union (str.to_re "89") (re.union (str.to_re "A") (str.to_re "B"))) (re.++ ((_ re.loop 3 3) (re.union (re.range "0" "9") (re.range "A" "F"))) (re.++ (str.to_re "-") ((_ re.loop 12 12) (re.union (re.range "0" "9") (re.range "A" "F")))))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)