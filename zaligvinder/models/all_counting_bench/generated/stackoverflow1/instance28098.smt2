;test regex ^\(01[0-9]{4}\) [0-9]{5}$|^\(01[0-9]{3}\) [0-9]{6}$|^\(01[0-9]1\) [0-9]{3} [0-9]{4}$
(declare-const X String)
(assert (str.in_re X (re.union (re.union (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "(") (re.++ (str.to_re "01") (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ (str.to_re ")") (re.++ (str.to_re " ") ((_ re.loop 5 5) (re.range "0" "9")))))))) (str.to_re "")) (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "(") (re.++ (str.to_re "01") (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.++ (str.to_re ")") (re.++ (str.to_re " ") ((_ re.loop 6 6) (re.range "0" "9")))))))) (str.to_re ""))) (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "(") (re.++ (str.to_re "01") (re.++ (re.range "0" "9") (re.++ (str.to_re "1") (re.++ (str.to_re ")") (re.++ (str.to_re " ") (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.++ (str.to_re " ") ((_ re.loop 4 4) (re.range "0" "9"))))))))))) (str.to_re "")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)