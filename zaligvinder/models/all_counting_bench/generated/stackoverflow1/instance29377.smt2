;test regex sub("[:punct:]{3}", "", z)
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "s") (re.++ (str.to_re "u") (re.++ (str.to_re "b") (re.++ (re.++ (re.++ (str.to_re "\u{22}") (re.++ ((_ re.loop 3 3) (re.union (str.to_re ":") (re.union (str.to_re "p") (re.union (str.to_re "u") (re.union (str.to_re "n") (re.union (str.to_re "c") (re.union (str.to_re "t") (str.to_re ":")))))))) (str.to_re "\u{22}"))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{22}") (str.to_re "\u{22}"))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (str.to_re "z")))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)