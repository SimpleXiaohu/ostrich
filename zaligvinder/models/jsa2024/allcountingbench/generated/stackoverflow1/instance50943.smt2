;test regex print "$2\n" while $line =~ /<(.*?)>(.*?)<\/\g{1}>/g;
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (str.to_re "p") (re.++ (str.to_re "r") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "t") (re.++ (str.to_re " ") (str.to_re "\u{22}"))))))) (re.++ (str.to_re "") (re.++ (str.to_re "2") (re.++ (str.to_re "\u{0a}") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re " ") (re.++ (str.to_re "w") (re.++ (str.to_re "h") (re.++ (str.to_re "i") (re.++ (str.to_re "l") (re.++ (str.to_re "e") (str.to_re " ")))))))))))) (re.++ (str.to_re "") (re.++ (str.to_re "l") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "e") (re.++ (str.to_re " ") (re.++ (str.to_re "=") (re.++ (str.to_re "~") (re.++ (str.to_re " ") (re.++ (str.to_re "/") (re.++ (str.to_re "<") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re ">") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "<") (re.++ (str.to_re "/") (re.++ ((_ re.loop 1 1) (str.to_re "g")) (re.++ (str.to_re ">") (re.++ (str.to_re "/") (re.++ (str.to_re "g") (str.to_re ";"))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)