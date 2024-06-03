;test regex ^(19|20)[0-9]{2}-((01|03|05|07|08|10|12)-(0[1-9]|[12][0-9]|3[01]))|(02-(0[1-9]|[12][0-9]))|((04|06|09|11)-(0[1-9]|[12][0-9]|30))$
(declare-const X String)
(assert (str.in_re X (re.union (re.union (re.++ (str.to_re "") (re.++ (re.union (str.to_re "19") (str.to_re "20")) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (str.to_re "-") (re.++ (re.union (re.union (re.union (re.union (re.union (re.union (str.to_re "01") (str.to_re "03")) (str.to_re "05")) (str.to_re "07")) (str.to_re "08")) (str.to_re "10")) (str.to_re "12")) (re.++ (str.to_re "-") (re.union (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "12") (re.range "0" "9"))) (re.++ (str.to_re "3") (str.to_re "01"))))))))) (re.++ (str.to_re "02") (re.++ (str.to_re "-") (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "12") (re.range "0" "9")))))) (re.++ (re.++ (re.union (re.union (re.union (str.to_re "04") (str.to_re "06")) (str.to_re "09")) (str.to_re "11")) (re.++ (str.to_re "-") (re.union (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "12") (re.range "0" "9"))) (str.to_re "30")))) (str.to_re "")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)