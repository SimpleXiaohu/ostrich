;test regex ^((XY|AB|PQ).){2}
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "") ((_ re.loop 2 2) (re.++ (re.union (re.union (re.++ (str.to_re "X") (str.to_re "Y")) (re.++ (str.to_re "A") (str.to_re "B"))) (re.++ (str.to_re "P") (str.to_re "Q"))) (re.diff re.allchar (str.to_re "\n")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)