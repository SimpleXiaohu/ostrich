;test regex \s+Cert Hash.*?((\s[a-z0-9]{2})+)
(declare-const X String)
(assert (str.in_re X (re.++ (re.+ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ (str.to_re "C") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (re.++ (str.to_re "t") (re.++ (str.to_re " ") (re.++ (str.to_re "H") (re.++ (str.to_re "a") (re.++ (str.to_re "s") (re.++ (str.to_re "h") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.+ (re.++ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "0" "9"))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)