;test regex rename 's/^(([A-Z]{2,}| )+)(.*)/\u\L$1\E - $3/g' *
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "n") (re.++ (str.to_re "a") (re.++ (str.to_re "m") (re.++ (str.to_re "e") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "s") (str.to_re "/")))))))))) (re.++ (str.to_re "") (re.++ (re.+ (re.union (re.++ (re.* (re.range "A" "Z")) ((_ re.loop 2 2) (re.range "A" "Z"))) (str.to_re " "))) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "/") (re.++ (str.to_re "u") (str.to_re "L"))))))) (re.++ (str.to_re "") (re.++ (str.to_re "1") (re.++ (str.to_re "E") (re.++ (str.to_re " ") (re.++ (str.to_re "-") (str.to_re " "))))))) (re.++ (str.to_re "") (re.++ (str.to_re "3") (re.++ (str.to_re "/") (re.++ (str.to_re "g") (re.++ (str.to_re "\u{27}") (re.* (str.to_re " "))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)