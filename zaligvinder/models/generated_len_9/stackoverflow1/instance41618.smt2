;test regex gsub('.{2}$', '', varname)
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "g") (re.++ (str.to_re "s") (re.++ (str.to_re "u") (re.++ (str.to_re "b") (re.++ (re.++ (re.++ (re.++ (str.to_re "\u{27}") ((_ re.loop 2 2) (re.diff re.allchar (str.to_re "\n")))) (re.++ (str.to_re "") (str.to_re "\u{27}"))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{27}") (str.to_re "\u{27}"))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "v") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (re.++ (str.to_re "n") (re.++ (str.to_re "a") (re.++ (str.to_re "m") (str.to_re "e"))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)