;test regex X-Spam-Level:\s[*]{11}
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "X") (re.++ (str.to_re "-") (re.++ (str.to_re "S") (re.++ (str.to_re "p") (re.++ (str.to_re "a") (re.++ (str.to_re "m") (re.++ (str.to_re "-") (re.++ (str.to_re "L") (re.++ (str.to_re "e") (re.++ (str.to_re "v") (re.++ (str.to_re "e") (re.++ (str.to_re "l") (re.++ (str.to_re ":") (re.++ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) ((_ re.loop 11 11) (str.to_re "*"))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)