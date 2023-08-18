;test regex ((?:[A-z]|\d){8}-(?:(?:[A-z]|\d){4}-){3}(?:[A-z]|\d){12}-(?:[A-z]|\d){4})
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 8 8) (re.union (re.range "A" "z") (re.range "0" "9"))) (re.++ (str.to_re "-") (re.++ ((_ re.loop 3 3) (re.++ ((_ re.loop 4 4) (re.union (re.range "A" "z") (re.range "0" "9"))) (str.to_re "-"))) (re.++ ((_ re.loop 12 12) (re.union (re.range "A" "z") (re.range "0" "9"))) (re.++ (str.to_re "-") ((_ re.loop 4 4) (re.union (re.range "A" "z") (re.range "0" "9"))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)