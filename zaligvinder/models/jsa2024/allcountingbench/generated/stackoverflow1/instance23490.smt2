;test regex (([^ac]*[ac]){2})*[^ac]*
(declare-const X String)
(assert (str.in_re X (re.++ (re.* ((_ re.loop 2 2) (re.++ (re.* (re.inter (re.diff re.allchar (str.to_re "a")) (re.diff re.allchar (str.to_re "c")))) (re.union (str.to_re "a") (str.to_re "c"))))) (re.* (re.inter (re.diff re.allchar (str.to_re "a")) (re.diff re.allchar (str.to_re "c")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)