;test regex sapply(strsplit(PATTERN, '-'), function(i) sub('(.*?_){1}', '', i))
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "s") (re.++ (str.to_re "a") (re.++ (str.to_re "p") (re.++ (str.to_re "p") (re.++ (str.to_re "l") (re.++ (str.to_re "y") (re.++ (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re "s") (re.++ (str.to_re "p") (re.++ (str.to_re "l") (re.++ (str.to_re "i") (re.++ (str.to_re "t") (re.++ (re.++ (str.to_re "P") (re.++ (str.to_re "A") (re.++ (str.to_re "T") (re.++ (str.to_re "T") (re.++ (str.to_re "E") (re.++ (str.to_re "R") (str.to_re "N"))))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "-") (str.to_re "\u{27}")))))))))))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "f") (re.++ (str.to_re "u") (re.++ (str.to_re "n") (re.++ (str.to_re "c") (re.++ (str.to_re "t") (re.++ (str.to_re "i") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (re.++ (str.to_re "i") (re.++ (str.to_re " ") (re.++ (str.to_re "s") (re.++ (str.to_re "u") (re.++ (str.to_re "b") (re.++ (re.++ (re.++ (str.to_re "\u{27}") (re.++ ((_ re.loop 1 1) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (str.to_re "_"))) (str.to_re "\u{27}"))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{27}") (str.to_re "\u{27}"))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (str.to_re "i"))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)