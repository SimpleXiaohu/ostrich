;test regex (((19|20)([2468][048]|[13579][26]|0[48])|2000)/02/29|((19|20)[0-9]{2}/(0[469]|11)/(0[1-9]|[12][0-9]|30)|(19|20)[0-9]{2}/(0[13578]|1[02])/(0[1-9]|[12][0-9]|3[01])|(19|20)[0-9]{2}/02/(0[1-9]|1[0-9]|2[0-8]))) 
(declare-const X String)
(assert (str.in_re X (re.++ (re.union (re.++ (re.union (re.++ (re.union (str.to_re "19") (str.to_re "20")) (re.union (re.union (re.++ (str.to_re "2468") (str.to_re "048")) (re.++ (str.to_re "13579") (str.to_re "26"))) (re.++ (str.to_re "0") (str.to_re "48")))) (str.to_re "2000")) (re.++ (str.to_re "/") (re.++ (str.to_re "02") (re.++ (str.to_re "/") (str.to_re "29"))))) (re.union (re.union (re.++ (re.union (str.to_re "19") (str.to_re "20")) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (str.to_re "/") (re.++ (re.union (re.++ (str.to_re "0") (str.to_re "469")) (str.to_re "11")) (re.++ (str.to_re "/") (re.union (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "12") (re.range "0" "9"))) (str.to_re "30"))))))) (re.++ (re.union (str.to_re "19") (str.to_re "20")) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (str.to_re "/") (re.++ (re.union (re.++ (str.to_re "0") (str.to_re "13578")) (re.++ (str.to_re "1") (str.to_re "02"))) (re.++ (str.to_re "/") (re.union (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "12") (re.range "0" "9"))) (re.++ (str.to_re "3") (str.to_re "01"))))))))) (re.++ (re.union (str.to_re "19") (str.to_re "20")) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (str.to_re "/") (re.++ (str.to_re "02") (re.++ (str.to_re "/") (re.union (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "9"))) (re.++ (str.to_re "2") (re.range "0" "8")))))))))) (str.to_re " "))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)