;test regex ^00[1-9][1-9][0-9]{0,13}$|^00[1-9][0-9][1-9][0-9]{0,12}$|^00[1-9][0-9]{2}[1-9][0-9]{0,11}$
(declare-const X String)
(assert (str.in_re X (re.union (re.union (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "00") (re.++ (re.range "1" "9") (re.++ (re.range "1" "9") ((_ re.loop 0 13) (re.range "0" "9")))))) (str.to_re "")) (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "00") (re.++ (re.range "1" "9") (re.++ (re.range "0" "9") (re.++ (re.range "1" "9") ((_ re.loop 0 12) (re.range "0" "9"))))))) (str.to_re ""))) (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "00") (re.++ (re.range "1" "9") (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (re.range "1" "9") ((_ re.loop 0 11) (re.range "0" "9"))))))) (str.to_re "")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)