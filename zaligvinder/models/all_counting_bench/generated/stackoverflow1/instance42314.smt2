;test regex <Event id="2965652b-f7b7-4539-abb6-33cae0fca2d1" name="updateInfo" eventType="updateInfo"><eventTime>.{20}<\/eventTime><e...
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "<") (re.++ (str.to_re "E") (re.++ (str.to_re "v") (re.++ (str.to_re "e") (re.++ (str.to_re "n") (re.++ (str.to_re "t") (re.++ (str.to_re " ") (re.++ (str.to_re "i") (re.++ (str.to_re "d") (re.++ (str.to_re "=") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "2965652") (re.++ (str.to_re "b") (re.++ (str.to_re "-") (re.++ (str.to_re "f") (re.++ (str.to_re "7") (re.++ (str.to_re "b") (re.++ (str.to_re "7") (re.++ (str.to_re "-") (re.++ (str.to_re "4539") (re.++ (str.to_re "-") (re.++ (str.to_re "a") (re.++ (str.to_re "b") (re.++ (str.to_re "b") (re.++ (str.to_re "6") (re.++ (str.to_re "-") (re.++ (str.to_re "33") (re.++ (str.to_re "c") (re.++ (str.to_re "a") (re.++ (str.to_re "e") (re.++ (str.to_re "0") (re.++ (str.to_re "f") (re.++ (str.to_re "c") (re.++ (str.to_re "a") (re.++ (str.to_re "2") (re.++ (str.to_re "d") (re.++ (str.to_re "1") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re " ") (re.++ (str.to_re "n") (re.++ (str.to_re "a") (re.++ (str.to_re "m") (re.++ (str.to_re "e") (re.++ (str.to_re "=") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "u") (re.++ (str.to_re "p") (re.++ (str.to_re "d") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re "I") (re.++ (str.to_re "n") (re.++ (str.to_re "f") (re.++ (str.to_re "o") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re " ") (re.++ (str.to_re "e") (re.++ (str.to_re "v") (re.++ (str.to_re "e") (re.++ (str.to_re "n") (re.++ (str.to_re "t") (re.++ (str.to_re "T") (re.++ (str.to_re "y") (re.++ (str.to_re "p") (re.++ (str.to_re "e") (re.++ (str.to_re "=") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "u") (re.++ (str.to_re "p") (re.++ (str.to_re "d") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re "I") (re.++ (str.to_re "n") (re.++ (str.to_re "f") (re.++ (str.to_re "o") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re ">") (re.++ (str.to_re "<") (re.++ (str.to_re "e") (re.++ (str.to_re "v") (re.++ (str.to_re "e") (re.++ (str.to_re "n") (re.++ (str.to_re "t") (re.++ (str.to_re "T") (re.++ (str.to_re "i") (re.++ (str.to_re "m") (re.++ (str.to_re "e") (re.++ (str.to_re ">") (re.++ ((_ re.loop 20 20) (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "<") (re.++ (str.to_re "/") (re.++ (str.to_re "e") (re.++ (str.to_re "v") (re.++ (str.to_re "e") (re.++ (str.to_re "n") (re.++ (str.to_re "t") (re.++ (str.to_re "T") (re.++ (str.to_re "i") (re.++ (str.to_re "m") (re.++ (str.to_re "e") (re.++ (str.to_re ">") (re.++ (str.to_re "<") (re.++ (str.to_re "e") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (re.diff re.allchar (str.to_re "\n")) (re.diff re.allchar (str.to_re "\n"))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)