;test regex x{2,}(x[^x]{3}x)x{2,}
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.* (str.to_re "x")) ((_ re.loop 2 2) (str.to_re "x"))) (re.++ (re.++ (str.to_re "x") (re.++ ((_ re.loop 3 3) (re.diff re.allchar (str.to_re "x"))) (str.to_re "x"))) (re.++ (re.* (str.to_re "x")) ((_ re.loop 2 2) (str.to_re "x")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)