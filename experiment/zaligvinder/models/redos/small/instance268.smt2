;test regex (Queued up.*id:(.{24}))
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "Q") (re.++ (str.to_re "u") (re.++ (str.to_re "e") (re.++ (str.to_re "u") (re.++ (str.to_re "e") (re.++ (str.to_re "d") (re.++ (str.to_re " ") (re.++ (str.to_re "u") (re.++ (str.to_re "p") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "i") (re.++ (str.to_re "d") (re.++ (str.to_re ":") ((_ re.loop 24 24) (re.diff re.allchar (str.to_re "\n"))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)