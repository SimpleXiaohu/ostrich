;test regex \*[A-Z]{8}|\*[A-Z]{3}\n\s*[A-Z]{5}
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (str.to_re "*") ((_ re.loop 8 8) (re.range "A" "Z"))) (re.++ (str.to_re "*") (re.++ ((_ re.loop 3 3) (re.range "A" "Z")) (re.++ (str.to_re "\u{0a}") (re.++ (re.* (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) ((_ re.loop 5 5) (re.range "A" "Z")))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)