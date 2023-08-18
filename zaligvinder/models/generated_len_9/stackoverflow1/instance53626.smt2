;test regex ^0(?:2(?:12|3[45789]|[45][1-9]|6[0-9]|7[0-8]|8[1235678]|9[1-5])|4(?:1[246]|2[46]))\d{7}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "0") (re.++ (re.union (re.++ (str.to_re "2") (re.union (re.union (re.union (re.union (re.union (re.union (str.to_re "12") (re.++ (str.to_re "3") (str.to_re "45789"))) (re.++ (str.to_re "45") (re.range "1" "9"))) (re.++ (str.to_re "6") (re.range "0" "9"))) (re.++ (str.to_re "7") (re.range "0" "8"))) (re.++ (str.to_re "8") (str.to_re "1235678"))) (re.++ (str.to_re "9") (re.range "1" "5")))) (re.++ (str.to_re "4") (re.union (re.++ (str.to_re "1") (str.to_re "246")) (re.++ (str.to_re "2") (str.to_re "46"))))) ((_ re.loop 7 7) (re.range "0" "9"))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)