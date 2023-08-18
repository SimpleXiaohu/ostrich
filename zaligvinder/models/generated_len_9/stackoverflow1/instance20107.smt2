;test regex ^(\d\d\s.*)\n(.*)(\s-{0,1}\d{1,3}[,.]\d{2,3},{0,1}\d{0,2})
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "") (re.++ (re.++ (re.range "0" "9") (re.++ (re.range "0" "9") (re.++ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) (re.* (re.diff re.allchar (str.to_re "\n")))))) (re.++ (str.to_re "\u{0a}") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (re.++ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) (re.++ ((_ re.loop 0 1) (str.to_re "-")) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.++ (re.union (str.to_re ",") (str.to_re ".")) ((_ re.loop 2 3) (re.range "0" "9")))))) (re.++ ((_ re.loop 0 1) (str.to_re ",")) ((_ re.loop 0 2) (re.range "0" "9"))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)