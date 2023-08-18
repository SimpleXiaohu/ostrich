;test regex ^((1[1-9]|2[03489]|3[0347]|5[56]|7[04-9]|8[047]|9[018])\d{8}|(1[2-9]\d|[58]00)\d{6}|8(001111|45464\d))$ 
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.union (re.union (re.++ (re.union (re.union (re.union (re.union (re.union (re.union (re.++ (str.to_re "1") (re.range "1" "9")) (re.++ (str.to_re "2") (str.to_re "03489"))) (re.++ (str.to_re "3") (str.to_re "0347"))) (re.++ (str.to_re "5") (str.to_re "56"))) (re.++ (str.to_re "7") (re.range "04" "9"))) (re.++ (str.to_re "8") (str.to_re "047"))) (re.++ (str.to_re "9") (str.to_re "018"))) ((_ re.loop 8 8) (re.range "0" "9"))) (re.++ (re.union (re.++ (str.to_re "1") (re.++ (re.range "2" "9") (re.range "0" "9"))) (re.++ (str.to_re "58") (str.to_re "00"))) ((_ re.loop 6 6) (re.range "0" "9")))) (re.++ (str.to_re "8") (re.union (str.to_re "001111") (re.++ (str.to_re "45464") (re.range "0" "9")))))) (re.++ (str.to_re "") (str.to_re " ")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)