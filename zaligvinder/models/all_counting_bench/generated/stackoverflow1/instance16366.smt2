;test regex echo $num | egrep '(6.*|7.*|8.*){3}' | egrep -v '(6.*|7.*|8.*){4}' | egrep -v '(6.*|7.*|8.*){5}'`
(declare-const X String)
(assert (str.in_re X (re.union (re.union (re.union (re.++ (re.++ (str.to_re "e") (re.++ (str.to_re "c") (re.++ (str.to_re "h") (re.++ (str.to_re "o") (str.to_re " "))))) (re.++ (str.to_re "") (re.++ (str.to_re "n") (re.++ (str.to_re "u") (re.++ (str.to_re "m") (str.to_re " ")))))) (re.++ (str.to_re " ") (re.++ (str.to_re "e") (re.++ (str.to_re "g") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "p") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{27}") (re.++ ((_ re.loop 3 3) (re.union (re.union (re.++ (str.to_re "6") (re.* (re.diff re.allchar (str.to_re "\n")))) (re.++ (str.to_re "7") (re.* (re.diff re.allchar (str.to_re "\n"))))) (re.++ (str.to_re "8") (re.* (re.diff re.allchar (str.to_re "\n")))))) (re.++ (str.to_re "\u{27}") (str.to_re " ")))))))))))) (re.++ (str.to_re " ") (re.++ (str.to_re "e") (re.++ (str.to_re "g") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "p") (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re "v") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{27}") (re.++ ((_ re.loop 4 4) (re.union (re.union (re.++ (str.to_re "6") (re.* (re.diff re.allchar (str.to_re "\n")))) (re.++ (str.to_re "7") (re.* (re.diff re.allchar (str.to_re "\n"))))) (re.++ (str.to_re "8") (re.* (re.diff re.allchar (str.to_re "\n")))))) (re.++ (str.to_re "\u{27}") (str.to_re " "))))))))))))))) (re.++ (str.to_re " ") (re.++ (str.to_re "e") (re.++ (str.to_re "g") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "p") (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re "v") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{27}") (re.++ ((_ re.loop 5 5) (re.union (re.union (re.++ (str.to_re "6") (re.* (re.diff re.allchar (str.to_re "\n")))) (re.++ (str.to_re "7") (re.* (re.diff re.allchar (str.to_re "\n"))))) (re.++ (str.to_re "8") (re.* (re.diff re.allchar (str.to_re "\n")))))) (re.++ (str.to_re "\u{27}") (str.to_re "`")))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)