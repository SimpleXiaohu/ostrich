;test regex rename -n "s/(.*)\/.*\.([a-z0-9]{3}|[a-z]{2}\.srt)$/\$1\/\$1\.\$2/" */*
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "n") (re.++ (str.to_re "a") (re.++ (str.to_re "m") (re.++ (str.to_re "e") (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re "n") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "s") (re.++ (str.to_re "/") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "/") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re ".") (re.union ((_ re.loop 3 3) (re.union (re.range "a" "z") (re.range "0" "9"))) (re.++ ((_ re.loop 2 2) (re.range "a" "z")) (re.++ (str.to_re ".") (re.++ (str.to_re "s") (re.++ (str.to_re "r") (str.to_re "t"))))))))))))))))))))))) (re.++ (str.to_re "") (re.++ (str.to_re "/") (re.++ (str.to_re "$") (re.++ (str.to_re "1") (re.++ (str.to_re "/") (re.++ (str.to_re "$") (re.++ (str.to_re "1") (re.++ (str.to_re ".") (re.++ (str.to_re "$") (re.++ (str.to_re "2") (re.++ (str.to_re "/") (re.++ (str.to_re "\u{22}") (re.++ (re.* (str.to_re " ")) (re.* (str.to_re "/"))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)