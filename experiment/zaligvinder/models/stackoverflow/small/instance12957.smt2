;test regex sub(" *\n{5}.*?\n{4} *", " ", s)
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "s") (re.++ (str.to_re "u") (re.++ (str.to_re "b") (re.++ (re.++ (re.++ (str.to_re "\u{22}") (re.++ (re.* (str.to_re " ")) (re.++ ((_ re.loop 5 5) (str.to_re "\u{0a}")) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ ((_ re.loop 4 4) (str.to_re "\u{0a}")) (re.++ (re.* (str.to_re " ")) (str.to_re "\u{22}"))))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re " ") (str.to_re "\u{22}")))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (str.to_re "s")))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)