;test regex "{0,2}.`t{1,10}." -f $Item.Option,$Item.Description
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (re.++ ((_ re.loop 0 2) (str.to_re "\u{22}")) (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "`") (re.++ ((_ re.loop 1 10) (str.to_re "t")) (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "\u{22}") (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re "f") (str.to_re " ")))))))))) (re.++ (str.to_re "") (re.++ (str.to_re "I") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re "m") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "O") (re.++ (str.to_re "p") (re.++ (str.to_re "t") (re.++ (str.to_re "i") (re.++ (str.to_re "o") (str.to_re "n"))))))))))))) (str.to_re ",")) (re.++ (str.to_re "") (re.++ (str.to_re "I") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re "m") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "D") (re.++ (str.to_re "e") (re.++ (str.to_re "s") (re.++ (str.to_re "c") (re.++ (str.to_re "r") (re.++ (str.to_re "i") (re.++ (str.to_re "p") (re.++ (str.to_re "t") (re.++ (str.to_re "i") (re.++ (str.to_re "o") (str.to_re "n"))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)