;test regex "456,Jane Doe" -replace '^(\d{3}),(.*)$',"| $(`"`$2`".ToUpper) | `$1 |"
(declare-const X String)
(assert (str.in_re X (re.union (re.union (re.union (re.++ (re.++ (re.++ (re.++ (re.++ (re.++ (str.to_re "\u{22}") (str.to_re "456")) (re.++ (str.to_re ",") (re.++ (str.to_re "J") (re.++ (str.to_re "a") (re.++ (str.to_re "n") (re.++ (str.to_re "e") (re.++ (str.to_re " ") (re.++ (str.to_re "D") (re.++ (str.to_re "o") (re.++ (str.to_re "e") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "p") (re.++ (str.to_re "l") (re.++ (str.to_re "a") (re.++ (str.to_re "c") (re.++ (str.to_re "e") (re.++ (str.to_re " ") (str.to_re "\u{27}")))))))))))))))))))))) (re.++ (str.to_re "") ((_ re.loop 3 3) (re.range "0" "9")))) (re.++ (str.to_re ",") (re.* (re.diff re.allchar (str.to_re "\n"))))) (re.++ (str.to_re "") (str.to_re "\u{27}"))) (re.++ (str.to_re ",") (str.to_re "\u{22}"))) (re.++ (str.to_re " ") (re.++ (str.to_re "") (re.++ (re.++ (re.++ (str.to_re "`") (re.++ (str.to_re "\u{22}") (str.to_re "`"))) (re.++ (str.to_re "") (re.++ (str.to_re "2") (re.++ (str.to_re "`") (re.++ (str.to_re "\u{22}") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "T") (re.++ (str.to_re "o") (re.++ (str.to_re "U") (re.++ (str.to_re "p") (re.++ (str.to_re "p") (re.++ (str.to_re "e") (str.to_re "r"))))))))))))) (str.to_re " "))))) (re.++ (re.++ (str.to_re " ") (str.to_re "`")) (re.++ (str.to_re "") (re.++ (str.to_re "1") (str.to_re " "))))) (str.to_re "\u{22}"))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)