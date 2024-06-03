;test regex [+]{5}.*AM|[+]{5}.*PM
(declare-const X String)
(assert (str.in_re X (re.union (re.++ ((_ re.loop 5 5) (str.to_re "+")) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "A") (str.to_re "M")))) (re.++ ((_ re.loop 5 5) (str.to_re "+")) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "P") (str.to_re "M")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)