;test regex (dog(cat(...){3}))
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "d") (re.++ (str.to_re "o") (re.++ (str.to_re "g") (re.++ (str.to_re "c") (re.++ (str.to_re "a") (re.++ (str.to_re "t") ((_ re.loop 3 3) (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (re.diff re.allchar (str.to_re "\n")) (re.diff re.allchar (str.to_re "\n")))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)