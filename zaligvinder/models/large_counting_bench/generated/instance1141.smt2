;test regex func1[^\(]*\(\s*([^,]{1,64}),\s*([^\)]{1,64})\s*\)
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "f") (re.++ (str.to_re "u") (re.++ (str.to_re "n") (re.++ (str.to_re "c") (re.++ (str.to_re "1") (re.++ (re.* (re.diff re.allchar (str.to_re "("))) (re.++ (str.to_re "(") (re.++ (re.* (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) ((_ re.loop 1 64) (re.diff re.allchar (str.to_re ","))))))))))) (re.++ (str.to_re ",") (re.++ (re.* (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ ((_ re.loop 1 64) (re.diff re.allchar (str.to_re ")"))) (re.++ (re.* (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (str.to_re ")"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 200 (str.len X)))
(check-sat)
(get-model)