;test regex ([\s a-z A-Z 0-9]{1,95})(.*)
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 1 95) (re.union (re.union (str.to_re "\u{20}") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) (re.union (str.to_re " ") (re.union (re.range "a" "z") (re.union (str.to_re " ") (re.union (re.range "A" "Z") (re.union (str.to_re " ") (re.range "0" "9")))))))) (re.* (re.diff re.allchar (str.to_re "\n"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 50 (str.len X)))
(check-sat)
(get-model)