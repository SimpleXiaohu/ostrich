;test regex kernel: (.{0,29}) ?IN
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "k") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (re.++ (str.to_re "n") (re.++ (str.to_re "e") (re.++ (str.to_re "l") (re.++ (str.to_re ":") (re.++ (str.to_re " ") (re.++ ((_ re.loop 0 29) (re.diff re.allchar (str.to_re "\n"))) (re.++ (re.opt (str.to_re " ")) (re.++ (str.to_re "I") (str.to_re "N"))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)