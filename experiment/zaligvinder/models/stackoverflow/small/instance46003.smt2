;test regex perl -F, -ane '$"=","; $F[1]=~s/^[0-9]{3}-[0-9]{4}$/208-$&/; print "@F";' contacts.csv
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (re.++ (re.++ (re.++ (re.++ (re.++ (str.to_re "p") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (re.++ (str.to_re "l") (re.++ (str.to_re " ") (re.++ (str.to_re "-") (str.to_re "F"))))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re "a") (re.++ (str.to_re "n") (re.++ (str.to_re "e") (re.++ (str.to_re " ") (str.to_re "\u{27}"))))))))) (re.++ (str.to_re "") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "=") (str.to_re "\u{22}"))))) (re.++ (str.to_re ",") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re ";") (str.to_re " "))))) (re.++ (str.to_re "") (re.++ (str.to_re "F") (re.++ (str.to_re "1") (re.++ (str.to_re "=") (re.++ (str.to_re "~") (re.++ (str.to_re "s") (str.to_re "/")))))))) (re.++ (str.to_re "") (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.++ (str.to_re "-") ((_ re.loop 4 4) (re.range "0" "9")))))) (re.++ (str.to_re "") (re.++ (str.to_re "/") (re.++ (str.to_re "208") (str.to_re "-"))))) (re.++ (str.to_re "") (re.++ (str.to_re "&") (re.++ (str.to_re "/") (re.++ (str.to_re ";") (re.++ (str.to_re " ") (re.++ (str.to_re "p") (re.++ (str.to_re "r") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "t") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "@") (re.++ (str.to_re "F") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re ";") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re " ") (re.++ (str.to_re "c") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (re.++ (str.to_re "t") (re.++ (str.to_re "a") (re.++ (str.to_re "c") (re.++ (str.to_re "t") (re.++ (str.to_re "s") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "c") (re.++ (str.to_re "s") (str.to_re "v")))))))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)