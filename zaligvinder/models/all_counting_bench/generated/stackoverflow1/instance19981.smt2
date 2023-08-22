;test regex (?:^x{0}|x{2,})(x...x)
(declare-const X String)
(assert (str.in_re X (re.++ (re.union (re.++ (str.to_re "") ((_ re.loop 0 0) (str.to_re "x"))) (re.++ (re.* (str.to_re "x")) ((_ re.loop 2 2) (str.to_re "x")))) (re.++ (str.to_re "x") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (re.diff re.allchar (str.to_re "\n")) (str.to_re "x"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)