;test regex ^([A-Z]{0,1}|[A-Za-z]{0,2})(\s{0,5})([A-Za-z]{1,5}|[\d]{1,5})([']{0,1})(\s{1})([A-Z]{1,2})([a-z]{0,2})(\s{1,2})([A-Za-z]{1,5}|[\d]{1,5})
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "") (re.++ (re.union ((_ re.loop 0 1) (re.range "A" "Z")) ((_ re.loop 0 2) (re.union (re.range "A" "Z") (re.range "a" "z")))) (re.++ ((_ re.loop 0 5) (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ (re.union ((_ re.loop 1 5) (re.union (re.range "A" "Z") (re.range "a" "z"))) ((_ re.loop 1 5) (re.range "0" "9"))) (re.++ ((_ re.loop 0 1) (str.to_re "\u{27}")) (re.++ ((_ re.loop 1 1) (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ ((_ re.loop 1 2) (re.range "A" "Z")) (re.++ ((_ re.loop 0 2) (re.range "a" "z")) (re.++ ((_ re.loop 1 2) (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.union ((_ re.loop 1 5) (re.union (re.range "A" "Z") (re.range "a" "z"))) ((_ re.loop 1 5) (re.range "0" "9"))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)