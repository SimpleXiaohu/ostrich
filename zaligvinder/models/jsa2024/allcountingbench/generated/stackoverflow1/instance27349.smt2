;test regex matrix\(([^,]*,){4}
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "m") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re "i") (re.++ (str.to_re "x") (re.++ (str.to_re "(") ((_ re.loop 4 4) (re.++ (re.* (re.diff re.allchar (str.to_re ","))) (str.to_re ","))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)