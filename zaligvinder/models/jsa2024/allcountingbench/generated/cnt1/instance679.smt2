;test regex \ASprdAuth apiKey=test, data=post https:\/\/api.spreadshirt.net\/api\/v1\/orders [0-9]+, sig=[0-9a-f]{40}, sessionId=abcd-1234\Z
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (re.++ (str.to_re "A") (re.++ (str.to_re "S") (re.++ (str.to_re "p") (re.++ (str.to_re "r") (re.++ (str.to_re "d") (re.++ (str.to_re "A") (re.++ (str.to_re "u") (re.++ (str.to_re "t") (re.++ (str.to_re "h") (re.++ (str.to_re " ") (re.++ (str.to_re "a") (re.++ (str.to_re "p") (re.++ (str.to_re "i") (re.++ (str.to_re "K") (re.++ (str.to_re "e") (re.++ (str.to_re "y") (re.++ (str.to_re "=") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re "s") (str.to_re "t"))))))))))))))))))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "d") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (str.to_re "a") (re.++ (str.to_re "=") (re.++ (str.to_re "p") (re.++ (str.to_re "o") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re " ") (re.++ (str.to_re "h") (re.++ (str.to_re "t") (re.++ (str.to_re "t") (re.++ (str.to_re "p") (re.++ (str.to_re "s") (re.++ (str.to_re ":") (re.++ (str.to_re "/") (re.++ (str.to_re "/") (re.++ (str.to_re "a") (re.++ (str.to_re "p") (re.++ (str.to_re "i") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "s") (re.++ (str.to_re "p") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "a") (re.++ (str.to_re "d") (re.++ (str.to_re "s") (re.++ (str.to_re "h") (re.++ (str.to_re "i") (re.++ (str.to_re "r") (re.++ (str.to_re "t") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "n") (re.++ (str.to_re "e") (re.++ (str.to_re "t") (re.++ (str.to_re "/") (re.++ (str.to_re "a") (re.++ (str.to_re "p") (re.++ (str.to_re "i") (re.++ (str.to_re "/") (re.++ (str.to_re "v") (re.++ (str.to_re "1") (re.++ (str.to_re "/") (re.++ (str.to_re "o") (re.++ (str.to_re "r") (re.++ (str.to_re "d") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (re.++ (str.to_re "s") (re.++ (str.to_re " ") (re.+ (re.range "0" "9"))))))))))))))))))))))))))))))))))))))))))))))))))))))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "s") (re.++ (str.to_re "i") (re.++ (str.to_re "g") (re.++ (str.to_re "=") ((_ re.loop 40 40) (re.union (re.range "0" "9") (re.range "a" "f")))))))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "s") (re.++ (str.to_re "e") (re.++ (str.to_re "s") (re.++ (str.to_re "s") (re.++ (str.to_re "i") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (re.++ (str.to_re "I") (re.++ (str.to_re "d") (re.++ (str.to_re "=") (re.++ (str.to_re "a") (re.++ (str.to_re "b") (re.++ (str.to_re "c") (re.++ (str.to_re "d") (re.++ (str.to_re "-") (re.++ (str.to_re "1234") (str.to_re "Z"))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)