;test regex ^[0][1-9]{2}(-)[0-9]{8}$  and  ^[0][1-9]{3}(-)[0-9]{7}$  and  ^[0][1-9]{4}(-)[0-9]{6}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (re.++ (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "0") (re.++ ((_ re.loop 2 2) (re.range "1" "9")) (re.++ (str.to_re "-") ((_ re.loop 8 8) (re.range "0" "9")))))) (re.++ (str.to_re "") (re.++ (str.to_re " ") (re.++ (str.to_re " ") (re.++ (str.to_re "a") (re.++ (str.to_re "n") (re.++ (str.to_re "d") (re.++ (str.to_re " ") (str.to_re " "))))))))) (re.++ (str.to_re "") (re.++ (str.to_re "0") (re.++ ((_ re.loop 3 3) (re.range "1" "9")) (re.++ (str.to_re "-") ((_ re.loop 7 7) (re.range "0" "9"))))))) (re.++ (str.to_re "") (re.++ (str.to_re " ") (re.++ (str.to_re " ") (re.++ (str.to_re "a") (re.++ (str.to_re "n") (re.++ (str.to_re "d") (re.++ (str.to_re " ") (str.to_re " "))))))))) (re.++ (str.to_re "") (re.++ (str.to_re "0") (re.++ ((_ re.loop 4 4) (re.range "1" "9")) (re.++ (str.to_re "-") ((_ re.loop 6 6) (re.range "0" "9"))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)