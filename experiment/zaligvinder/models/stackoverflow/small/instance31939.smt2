;test regex subset(df, grepl("(_\\+.*){2,}", Coding))
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "s") (re.++ (str.to_re "u") (re.++ (str.to_re "b") (re.++ (str.to_re "s") (re.++ (str.to_re "e") (re.++ (str.to_re "t") (re.++ (re.++ (str.to_re "d") (str.to_re "f")) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "g") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "p") (re.++ (str.to_re "l") (re.++ (re.++ (str.to_re "\u{22}") (re.++ (re.++ (re.* (re.++ (str.to_re "_") (re.++ (re.+ (str.to_re "\\")) (re.* (re.diff re.allchar (str.to_re "\n")))))) ((_ re.loop 2 2) (re.++ (str.to_re "_") (re.++ (re.+ (str.to_re "\\")) (re.* (re.diff re.allchar (str.to_re "\n"))))))) (str.to_re "\u{22}"))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "C") (re.++ (str.to_re "o") (re.++ (str.to_re "d") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (str.to_re "g")))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)