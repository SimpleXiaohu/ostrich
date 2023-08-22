;test regex (<[ADFJMNOS]\w*\s>) ([0-9]{1,2},) ([0-9]{4})
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "<") (re.++ (re.union (str.to_re "A") (re.union (str.to_re "D") (re.union (str.to_re "F") (re.union (str.to_re "J") (re.union (str.to_re "M") (re.union (str.to_re "N") (re.union (str.to_re "O") (str.to_re "S")))))))) (re.++ (re.* (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))) (re.++ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) (str.to_re ">"))))) (re.++ (str.to_re " ") (re.++ (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (str.to_re ",")) (re.++ (str.to_re " ") ((_ re.loop 4 4) (re.range "0" "9"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)