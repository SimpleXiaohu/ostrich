;test regex $regex ="@^alt=@BAUSTEIN\^{2}[a-zA-Z]{1}\^[a-zA-Z]{1}\^(.*)"
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "g") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (str.to_re " ") (re.++ (str.to_re "=") (re.++ (str.to_re "\u{22}") (str.to_re "@")))))))))) (re.++ (str.to_re "") (re.++ (str.to_re "a") (re.++ (str.to_re "l") (re.++ (str.to_re "t") (re.++ (str.to_re "=") (re.++ (str.to_re "@") (re.++ (str.to_re "B") (re.++ (str.to_re "A") (re.++ (str.to_re "U") (re.++ (str.to_re "S") (re.++ (str.to_re "T") (re.++ (str.to_re "E") (re.++ (str.to_re "I") (re.++ (str.to_re "N") (re.++ ((_ re.loop 2 2) (str.to_re "^")) (re.++ ((_ re.loop 1 1) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.++ (str.to_re "^") (re.++ ((_ re.loop 1 1) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.++ (str.to_re "^") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (str.to_re "\u{22}"))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)