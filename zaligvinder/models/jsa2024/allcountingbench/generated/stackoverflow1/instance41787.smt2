;test regex [A-Z]{2}\d[A-Z]?\s?\d[A-Z]{2}
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 2 2) (re.range "A" "Z")) (re.++ (re.range "0" "9") (re.++ (re.opt (re.range "A" "Z")) (re.++ (re.opt (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ (re.range "0" "9") ((_ re.loop 2 2) (re.range "A" "Z")))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)