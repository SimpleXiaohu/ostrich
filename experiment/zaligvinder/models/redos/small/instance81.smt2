;test regex ^gpg:\s+using subkey ([a-f0-9]{16,40}) instead of primary key ([a-f0-9]{16,40})$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "g") (re.++ (str.to_re "p") (re.++ (str.to_re "g") (re.++ (str.to_re ":") (re.++ (re.+ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ (str.to_re "u") (re.++ (str.to_re "s") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "g") (re.++ (str.to_re " ") (re.++ (str.to_re "s") (re.++ (str.to_re "u") (re.++ (str.to_re "b") (re.++ (str.to_re "k") (re.++ (str.to_re "e") (re.++ (str.to_re "y") (re.++ (str.to_re " ") (re.++ ((_ re.loop 16 40) (re.union (re.range "a" "f") (re.range "0" "9"))) (re.++ (str.to_re " ") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re "a") (re.++ (str.to_re "d") (re.++ (str.to_re " ") (re.++ (str.to_re "o") (re.++ (str.to_re "f") (re.++ (str.to_re " ") (re.++ (str.to_re "p") (re.++ (str.to_re "r") (re.++ (str.to_re "i") (re.++ (str.to_re "m") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (re.++ (str.to_re "y") (re.++ (str.to_re " ") (re.++ (str.to_re "k") (re.++ (str.to_re "e") (re.++ (str.to_re "y") (re.++ (str.to_re " ") ((_ re.loop 16 40) (re.union (re.range "a" "f") (re.range "0" "9"))))))))))))))))))))))))))))))))))))))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)