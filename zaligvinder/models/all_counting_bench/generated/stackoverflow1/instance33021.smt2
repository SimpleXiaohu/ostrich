;test regex perl -i.bak -pe "s!(I.*?)(misc:IN 1 )(\d+)(.*?')!${1}misc:OUT 2 ${3}/10${4}!e" test.txt
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (re.++ (str.to_re "p") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (re.++ (str.to_re "l") (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re "i") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "b") (re.++ (str.to_re "a") (re.++ (str.to_re "k") (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re "p") (re.++ (str.to_re "e") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "s") (re.++ (str.to_re "!") (re.++ (re.++ (str.to_re "I") (re.* (re.diff re.allchar (str.to_re "\n")))) (re.++ (re.++ (str.to_re "m") (re.++ (str.to_re "i") (re.++ (str.to_re "s") (re.++ (str.to_re "c") (re.++ (str.to_re ":") (re.++ (str.to_re "I") (re.++ (str.to_re "N") (re.++ (str.to_re " ") (re.++ (str.to_re "1") (str.to_re " ")))))))))) (re.++ (re.+ (re.range "0" "9")) (re.++ (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (str.to_re "\u{27}")) (str.to_re "!")))))))))))))))))))))))) (re.++ ((_ re.loop 1 1) (str.to_re "")) (re.++ (str.to_re "m") (re.++ (str.to_re "i") (re.++ (str.to_re "s") (re.++ (str.to_re "c") (re.++ (str.to_re ":") (re.++ (str.to_re "O") (re.++ (str.to_re "U") (re.++ (str.to_re "T") (re.++ (str.to_re " ") (re.++ (str.to_re "2") (str.to_re " "))))))))))))) (re.++ ((_ re.loop 3 3) (str.to_re "")) (re.++ (str.to_re "/") (str.to_re "10")))) (re.++ ((_ re.loop 4 4) (str.to_re "")) (re.++ (str.to_re "!") (re.++ (str.to_re "e") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re " ") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "t") (re.++ (str.to_re "x") (str.to_re "t"))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)