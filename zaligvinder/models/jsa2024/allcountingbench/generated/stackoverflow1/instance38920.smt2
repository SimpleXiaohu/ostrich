;test regex function\s+loadMarkers\([^()]*\)(?:\r?\n.*){2}\r?\n\s*"([^"]+)"
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "f") (re.++ (str.to_re "u") (re.++ (str.to_re "n") (re.++ (str.to_re "c") (re.++ (str.to_re "t") (re.++ (str.to_re "i") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (re.++ (re.+ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ (str.to_re "l") (re.++ (str.to_re "o") (re.++ (str.to_re "a") (re.++ (str.to_re "d") (re.++ (str.to_re "M") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (re.++ (str.to_re "k") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (re.++ (str.to_re "s") (re.++ (str.to_re "(") (re.++ (re.* (re.inter (re.diff re.allchar (str.to_re "(")) (re.diff re.allchar (str.to_re ")")))) (re.++ (str.to_re ")") (re.++ ((_ re.loop 2 2) (re.++ (re.opt (str.to_re "\u{0d}")) (re.++ (str.to_re "\u{0a}") (re.* (re.diff re.allchar (str.to_re "\n")))))) (re.++ (re.opt (str.to_re "\u{0d}")) (re.++ (str.to_re "\u{0a}") (re.++ (re.* (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ (str.to_re "\u{22}") (re.++ (re.+ (re.diff re.allchar (str.to_re "\u{22}"))) (str.to_re "\u{22}"))))))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)