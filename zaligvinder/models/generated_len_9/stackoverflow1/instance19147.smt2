;test regex gsub("^(\\d{2})/(\\d{4})$", "\\1/01/\\2", df$a)
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "g") (re.++ (str.to_re "s") (re.++ (str.to_re "u") (re.++ (str.to_re "b") (re.++ (re.++ (re.++ (re.++ (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "") (re.++ (re.++ (str.to_re "\\") ((_ re.loop 2 2) (str.to_re "d"))) (re.++ (str.to_re "/") (re.++ (str.to_re "\\") ((_ re.loop 4 4) (str.to_re "d"))))))) (re.++ (str.to_re "") (str.to_re "\u{22}"))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "\\") (re.++ (str.to_re "1") (re.++ (str.to_re "/") (re.++ (str.to_re "01") (re.++ (str.to_re "/") (re.++ (str.to_re "\\") (re.++ (str.to_re "2") (str.to_re "\u{22}")))))))))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "d") (str.to_re "f"))))) (re.++ (str.to_re "") (str.to_re "a")))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)