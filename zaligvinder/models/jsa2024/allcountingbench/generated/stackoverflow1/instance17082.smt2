;test regex perl -pe 's|(time"\s*:\s*")[^"]*(")|${1}20:00:00$2|g'
(declare-const X String)
(assert (str.in_re X (re.union (re.union (re.union (re.++ (str.to_re "p") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (re.++ (str.to_re "l") (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re "p") (re.++ (str.to_re "e") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{27}") (str.to_re "s"))))))))))) (re.++ (re.++ (str.to_re "t") (re.++ (str.to_re "i") (re.++ (str.to_re "m") (re.++ (str.to_re "e") (re.++ (str.to_re "\u{22}") (re.++ (re.* (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ (str.to_re ":") (re.++ (re.* (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (str.to_re "\u{22}"))))))))) (re.++ (re.* (re.diff re.allchar (str.to_re "\u{22}"))) (str.to_re "\u{22}")))) (re.++ (re.++ ((_ re.loop 1 1) (str.to_re "")) (re.++ (str.to_re "20") (re.++ (str.to_re ":") (re.++ (str.to_re "00") (re.++ (str.to_re ":") (str.to_re "00")))))) (re.++ (str.to_re "") (str.to_re "2")))) (re.++ (str.to_re "g") (str.to_re "\u{27}")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)