;test regex grep("^(?:[0-9]*[a-z]){4}[0-9a-z]*$", x, perl=TRUE, value=TRUE);
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "g") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "p") (re.++ (re.++ (re.++ (re.++ (re.++ (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "") (re.++ ((_ re.loop 4 4) (re.++ (re.* (re.range "0" "9")) (re.range "a" "z"))) (re.* (re.union (re.range "0" "9") (re.range "a" "z")))))) (re.++ (str.to_re "") (str.to_re "\u{22}"))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (str.to_re "x")))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "p") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (re.++ (str.to_re "l") (re.++ (str.to_re "=") (re.++ (str.to_re "T") (re.++ (str.to_re "R") (re.++ (str.to_re "U") (str.to_re "E")))))))))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "v") (re.++ (str.to_re "a") (re.++ (str.to_re "l") (re.++ (str.to_re "u") (re.++ (str.to_re "e") (re.++ (str.to_re "=") (re.++ (str.to_re "T") (re.++ (str.to_re "R") (re.++ (str.to_re "U") (str.to_re "E"))))))))))))) (str.to_re ";"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)