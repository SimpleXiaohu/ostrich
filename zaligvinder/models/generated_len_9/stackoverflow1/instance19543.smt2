;test regex "\\/\\/(.{1,3}?)\\.wikipedia\\.[a-z]+\\/wiki\\/(\\S*?)*>(.*?)<"
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "\\") (re.++ (str.to_re "/") (re.++ (str.to_re "\\") (re.++ (str.to_re "/") (re.++ ((_ re.loop? 1 3) (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "\\") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "w") (re.++ (str.to_re "i") (re.++ (str.to_re "k") (re.++ (str.to_re "i") (re.++ (str.to_re "p") (re.++ (str.to_re "e") (re.++ (str.to_re "d") (re.++ (str.to_re "i") (re.++ (str.to_re "a") (re.++ (str.to_re "\\") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (re.+ (re.range "a" "z")) (re.++ (str.to_re "\\") (re.++ (str.to_re "/") (re.++ (str.to_re "w") (re.++ (str.to_re "i") (re.++ (str.to_re "k") (re.++ (str.to_re "i") (re.++ (str.to_re "\\") (re.++ (str.to_re "/") (re.++ (re.* (re.++ (str.to_re "\\") (re.*? (str.to_re "S")))) (re.++ (str.to_re ">") (re.++ (re.*? (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "<") (str.to_re "\u{22}")))))))))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)