;test regex $ echo "Foo big Bar" | sed -e 's/Foo(.*?)(Bar)/Hello${1}$2/'
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (str.to_re "") (re.++ (str.to_re " ") (re.++ (str.to_re "e") (re.++ (str.to_re "c") (re.++ (str.to_re "h") (re.++ (str.to_re "o") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "F") (re.++ (str.to_re "o") (re.++ (str.to_re "o") (re.++ (str.to_re " ") (re.++ (str.to_re "b") (re.++ (str.to_re "i") (re.++ (str.to_re "g") (re.++ (str.to_re " ") (re.++ (str.to_re "B") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (re.++ (str.to_re "\u{22}") (str.to_re " "))))))))))))))))))))) (re.++ (re.++ (re.++ (str.to_re " ") (re.++ (str.to_re "s") (re.++ (str.to_re "e") (re.++ (str.to_re "d") (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re "e") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "s") (re.++ (str.to_re "/") (re.++ (str.to_re "F") (re.++ (str.to_re "o") (re.++ (str.to_re "o") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (re.++ (str.to_re "B") (re.++ (str.to_re "a") (str.to_re "r"))) (re.++ (str.to_re "/") (re.++ (str.to_re "H") (re.++ (str.to_re "e") (re.++ (str.to_re "l") (re.++ (str.to_re "l") (str.to_re "o")))))))))))))))))))))) ((_ re.loop 1 1) (str.to_re ""))) (re.++ (str.to_re "") (re.++ (str.to_re "2") (re.++ (str.to_re "/") (str.to_re "\u{27}"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)