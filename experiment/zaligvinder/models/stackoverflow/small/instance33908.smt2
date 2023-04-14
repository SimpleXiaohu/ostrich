;test regex ^(?:(?:^|[-,])(?:[1-9][0-9]{0,3}|[1-5][0-9]{4}|6(?:[0-4][0-9]{3}|5(?:[0-4][0-9]{2}|5(?:[0-2][0-9]|3[0-5])))))+$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.+ (re.++ (re.union (str.to_re "") (re.union (str.to_re "-") (str.to_re ","))) (re.union (re.union (re.++ (re.range "1" "9") ((_ re.loop 0 3) (re.range "0" "9"))) (re.++ (re.range "1" "5") ((_ re.loop 4 4) (re.range "0" "9")))) (re.++ (str.to_re "6") (re.union (re.++ (re.range "0" "4") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (str.to_re "5") (re.union (re.++ (re.range "0" "4") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to_re "5") (re.union (re.++ (re.range "0" "2") (re.range "0" "9")) (re.++ (str.to_re "3") (re.range "0" "5")))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)