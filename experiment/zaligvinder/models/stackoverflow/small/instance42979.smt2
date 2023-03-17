;test regex ^[a-zA-Z]{2,5}-\d{3,}([,;\s][a-zA-Z]{2,5}-\d{3,})*
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "") (re.++ ((_ re.loop 2 5) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.++ (str.to_re "-") (re.++ (re.++ (re.* (re.range "0" "9")) ((_ re.loop 3 3) (re.range "0" "9"))) (re.* (re.++ (re.union (str.to_re ",") (re.union (str.to_re ";") (re.union (str.to_re "\u{20}") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))))) (re.++ ((_ re.loop 2 5) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.++ (str.to_re "-") (re.++ (re.* (re.range "0" "9")) ((_ re.loop 3 3) (re.range "0" "9")))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)