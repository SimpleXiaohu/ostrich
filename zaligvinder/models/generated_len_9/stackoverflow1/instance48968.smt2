;test regex \int_{1}^{10} (x^2)+\int_{1}^{10} (x^3)
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "t") ((_ re.loop 1 1) (str.to_re "_"))))) (re.++ ((_ re.loop 10 10) (str.to_re "")) (re.++ (str.to_re " ") (re.++ (re.+ (re.++ (str.to_re "x") (re.++ (str.to_re "") (str.to_re "2")))) (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "t") ((_ re.loop 1 1) (str.to_re "_"))))))))) (re.++ ((_ re.loop 10 10) (str.to_re "")) (re.++ (str.to_re " ") (re.++ (str.to_re "x") (re.++ (str.to_re "") (str.to_re "3"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)