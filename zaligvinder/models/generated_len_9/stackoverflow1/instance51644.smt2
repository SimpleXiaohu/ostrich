;test regex (\n.*){0,10}(.*Error:.*)(\n.*){0,10}
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 0 10) (re.++ (str.to_re "\u{0a}") (re.* (re.diff re.allchar (str.to_re "\n"))))) (re.++ (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "E") (re.++ (str.to_re "r") (re.++ (str.to_re "r") (re.++ (str.to_re "o") (re.++ (str.to_re "r") (re.++ (str.to_re ":") (re.* (re.diff re.allchar (str.to_re "\n")))))))))) ((_ re.loop 0 10) (re.++ (str.to_re "\u{0a}") (re.* (re.diff re.allchar (str.to_re "\n")))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)