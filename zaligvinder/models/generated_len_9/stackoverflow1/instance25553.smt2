;test regex S("@rm_nchar_words", "1,2")
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "S") (re.++ (re.++ (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "@") (re.++ (str.to_re "r") (re.++ (str.to_re "m") (re.++ (str.to_re "_") (re.++ (str.to_re "n") (re.++ (str.to_re "c") (re.++ (str.to_re "h") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (re.++ (str.to_re "_") (re.++ (str.to_re "w") (re.++ (str.to_re "o") (re.++ (str.to_re "r") (re.++ (str.to_re "d") (re.++ (str.to_re "s") (str.to_re "\u{22}"))))))))))))))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{22}") (str.to_re "1"))))) (re.++ (str.to_re ",") (re.++ (str.to_re "2") (str.to_re "\u{22}")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)