;test regex (?:&quot;|")id(?:&quot;|"):(?:&quot;|")(.{0,200}?)(?:&quot;|").{0,200}?(?:&quot;|")urn:li:fs_miniCompany:65514(?:&quot;|")
(declare-const X String)
(assert (str.in_re X (re.++ (re.union (re.++ (str.to_re "&") (re.++ (str.to_re "q") (re.++ (str.to_re "u") (re.++ (str.to_re "o") (re.++ (str.to_re "t") (str.to_re ";")))))) (str.to_re "\u{22}")) (re.++ (str.to_re "i") (re.++ (str.to_re "d") (re.++ (re.union (re.++ (str.to_re "&") (re.++ (str.to_re "q") (re.++ (str.to_re "u") (re.++ (str.to_re "o") (re.++ (str.to_re "t") (str.to_re ";")))))) (str.to_re "\u{22}")) (re.++ (str.to_re ":") (re.++ (re.union (re.++ (str.to_re "&") (re.++ (str.to_re "q") (re.++ (str.to_re "u") (re.++ (str.to_re "o") (re.++ (str.to_re "t") (str.to_re ";")))))) (str.to_re "\u{22}")) (re.++ ((_ re.loop 0 200) (re.diff re.allchar (str.to_re "\n"))) (re.++ (re.union (re.++ (str.to_re "&") (re.++ (str.to_re "q") (re.++ (str.to_re "u") (re.++ (str.to_re "o") (re.++ (str.to_re "t") (str.to_re ";")))))) (str.to_re "\u{22}")) (re.++ ((_ re.loop 0 200) (re.diff re.allchar (str.to_re "\n"))) (re.++ (re.union (re.++ (str.to_re "&") (re.++ (str.to_re "q") (re.++ (str.to_re "u") (re.++ (str.to_re "o") (re.++ (str.to_re "t") (str.to_re ";")))))) (str.to_re "\u{22}")) (re.++ (str.to_re "u") (re.++ (str.to_re "r") (re.++ (str.to_re "n") (re.++ (str.to_re ":") (re.++ (str.to_re "l") (re.++ (str.to_re "i") (re.++ (str.to_re ":") (re.++ (str.to_re "f") (re.++ (str.to_re "s") (re.++ (str.to_re "_") (re.++ (str.to_re "m") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "i") (re.++ (str.to_re "C") (re.++ (str.to_re "o") (re.++ (str.to_re "m") (re.++ (str.to_re "p") (re.++ (str.to_re "a") (re.++ (str.to_re "n") (re.++ (str.to_re "y") (re.++ (str.to_re ":") (re.++ (str.to_re "65514") (re.union (re.++ (str.to_re "&") (re.++ (str.to_re "q") (re.++ (str.to_re "u") (re.++ (str.to_re "o") (re.++ (str.to_re "t") (str.to_re ";")))))) (str.to_re "\u{22}")))))))))))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 50 (str.len X)))
(check-sat)
(get-model)