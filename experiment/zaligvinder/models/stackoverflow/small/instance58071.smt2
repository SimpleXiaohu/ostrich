;test regex /\/^0(9|4)d{8}$\//
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (str.to_re "/") (str.to_re "/")) (re.++ (str.to_re "") (re.++ (str.to_re "0") (re.++ (re.union (str.to_re "9") (str.to_re "4")) ((_ re.loop 8 8) (str.to_re "d")))))) (re.++ (str.to_re "") (re.++ (str.to_re "/") (str.to_re "/"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)