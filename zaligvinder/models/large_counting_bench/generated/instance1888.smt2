;test regex "(?:\\bWarning:.*?){1000,}"
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "\u{22}") (re.++ (re.++ (re.* (re.++ (str.to_re "\\") (re.++ (str.to_re "b") (re.++ (str.to_re "W") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (re.++ (str.to_re "n") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "g") (re.++ (str.to_re ":") (re.* (re.diff re.allchar (str.to_re "\n")))))))))))))) ((_ re.loop 1000 1000) (re.++ (str.to_re "\\") (re.++ (str.to_re "b") (re.++ (str.to_re "W") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (re.++ (str.to_re "n") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "g") (re.++ (str.to_re ":") (re.* (re.diff re.allchar (str.to_re "\n"))))))))))))))) (str.to_re "\u{22}")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 200 (str.len X)))
(check-sat)
(get-model)