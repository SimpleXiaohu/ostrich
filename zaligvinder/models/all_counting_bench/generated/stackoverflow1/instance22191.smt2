;test regex (.*foo.*){0}(.*bar.*){0}
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 0 0) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "f") (re.++ (str.to_re "o") (re.++ (str.to_re "o") (re.* (re.diff re.allchar (str.to_re "\n")))))))) ((_ re.loop 0 0) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "b") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (re.* (re.diff re.allchar (str.to_re "\n")))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)