;test regex .{0,4980}(\<\/div\>|\<\/p\>|\<\/section\>|\<\/blockquote\>|\<\/br\>|\.\s)
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 0 4980) (re.diff re.allchar (str.to_re "\n"))) (re.union (re.union (re.union (re.union (re.union (re.++ (str.to_re "<") (re.++ (str.to_re "/") (re.++ (str.to_re "d") (re.++ (str.to_re "i") (re.++ (str.to_re "v") (str.to_re ">")))))) (re.++ (str.to_re "<") (re.++ (str.to_re "/") (re.++ (str.to_re "p") (str.to_re ">"))))) (re.++ (str.to_re "<") (re.++ (str.to_re "/") (re.++ (str.to_re "s") (re.++ (str.to_re "e") (re.++ (str.to_re "c") (re.++ (str.to_re "t") (re.++ (str.to_re "i") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (str.to_re ">"))))))))))) (re.++ (str.to_re "<") (re.++ (str.to_re "/") (re.++ (str.to_re "b") (re.++ (str.to_re "l") (re.++ (str.to_re "o") (re.++ (str.to_re "c") (re.++ (str.to_re "k") (re.++ (str.to_re "q") (re.++ (str.to_re "u") (re.++ (str.to_re "o") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (str.to_re ">")))))))))))))) (re.++ (str.to_re "<") (re.++ (str.to_re "/") (re.++ (str.to_re "b") (re.++ (str.to_re "r") (str.to_re ">")))))) (re.++ (str.to_re ".") (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 200 (str.len X)))
(check-sat)
(get-model)