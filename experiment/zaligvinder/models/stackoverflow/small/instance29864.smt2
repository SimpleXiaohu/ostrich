;test regex ^(Copyright \(C\)) (\d{4}) - (\d{4}) (Dazzle Software, LLC)\. (All rights reserved)\.
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "") (re.++ (re.++ (str.to_re "C") (re.++ (str.to_re "o") (re.++ (str.to_re "p") (re.++ (str.to_re "y") (re.++ (str.to_re "r") (re.++ (str.to_re "i") (re.++ (str.to_re "g") (re.++ (str.to_re "h") (re.++ (str.to_re "t") (re.++ (str.to_re " ") (re.++ (str.to_re "(") (re.++ (str.to_re "C") (str.to_re ")"))))))))))))) (re.++ (str.to_re " ") (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re " ") (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ (str.to_re " ") (re.++ (re.++ (re.++ (str.to_re "D") (re.++ (str.to_re "a") (re.++ (str.to_re "z") (re.++ (str.to_re "z") (re.++ (str.to_re "l") (re.++ (str.to_re "e") (re.++ (str.to_re " ") (re.++ (str.to_re "S") (re.++ (str.to_re "o") (re.++ (str.to_re "f") (re.++ (str.to_re "t") (re.++ (str.to_re "w") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (str.to_re "e"))))))))))))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "L") (re.++ (str.to_re "L") (str.to_re "C")))))) (re.++ (str.to_re ".") (re.++ (str.to_re " ") (re.++ (re.++ (str.to_re "A") (re.++ (str.to_re "l") (re.++ (str.to_re "l") (re.++ (str.to_re " ") (re.++ (str.to_re "r") (re.++ (str.to_re "i") (re.++ (str.to_re "g") (re.++ (str.to_re "h") (re.++ (str.to_re "t") (re.++ (str.to_re "s") (re.++ (str.to_re " ") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "s") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (re.++ (str.to_re "v") (re.++ (str.to_re "e") (str.to_re "d"))))))))))))))))))) (str.to_re "."))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)