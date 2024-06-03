;test regex (?:.*?(?:this|that|a|b|c|9)){3,6}
(declare-const X String)
(assert (str.in_re X ((_ re.loop 3 6) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.union (re.union (re.union (re.union (re.union (re.++ (str.to_re "t") (re.++ (str.to_re "h") (re.++ (str.to_re "i") (str.to_re "s")))) (re.++ (str.to_re "t") (re.++ (str.to_re "h") (re.++ (str.to_re "a") (str.to_re "t"))))) (str.to_re "a")) (str.to_re "b")) (str.to_re "c")) (str.to_re "9"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)