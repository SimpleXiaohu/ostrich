;test regex zip <- str_extract(text, "\\d{5}")
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "z") (re.++ (str.to_re "i") (re.++ (str.to_re "p") (re.++ (str.to_re " ") (re.++ (str.to_re "<") (re.++ (str.to_re "-") (re.++ (str.to_re " ") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re "_") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re "a") (re.++ (str.to_re "c") (re.++ (str.to_re "t") (re.++ (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (str.to_re "t")))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "\\") (re.++ ((_ re.loop 5 5) (str.to_re "d")) (str.to_re "\u{22}")))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)