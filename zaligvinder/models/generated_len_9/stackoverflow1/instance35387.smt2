;test regex ^(00|\+)961([0-68-9]\d{6}|7[234579]\d{5}|7[0168]\d{6})$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.union (str.to_re "00") (str.to_re "+")) (re.++ (str.to_re "961") (re.union (re.union (re.++ (re.union (re.range "0" "68") (re.union (str.to_re "-") (str.to_re "9"))) ((_ re.loop 6 6) (re.range "0" "9"))) (re.++ (str.to_re "7") (re.++ (str.to_re "234579") ((_ re.loop 5 5) (re.range "0" "9"))))) (re.++ (str.to_re "7") (re.++ (str.to_re "0168") ((_ re.loop 6 6) (re.range "0" "9")))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)