;test regex S-1-5-21-\d{5,15}\-\d{5,15}\-\d{5,15}-556 
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "S") (re.++ (str.to_re "-") (re.++ (str.to_re "1") (re.++ (str.to_re "-") (re.++ (str.to_re "5") (re.++ (str.to_re "-") (re.++ (str.to_re "21") (re.++ (str.to_re "-") (re.++ ((_ re.loop 5 15) (re.range "0" "9")) (re.++ (str.to_re "-") (re.++ ((_ re.loop 5 15) (re.range "0" "9")) (re.++ (str.to_re "-") (re.++ ((_ re.loop 5 15) (re.range "0" "9")) (re.++ (str.to_re "-") (re.++ (str.to_re "556") (str.to_re " "))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)