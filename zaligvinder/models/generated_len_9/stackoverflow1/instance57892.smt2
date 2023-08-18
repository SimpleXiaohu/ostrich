;test regex (.{8})units.ml
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 8 8) (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "u") (re.++ (str.to_re "n") (re.++ (str.to_re "i") (re.++ (str.to_re "t") (re.++ (str.to_re "s") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "m") (str.to_re "l")))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)