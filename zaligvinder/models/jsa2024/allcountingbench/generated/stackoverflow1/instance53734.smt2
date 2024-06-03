;test regex ^[0-9A-Fa-f]{1,2}(?:[:-][0-9A-Fa-f]{0,2}){0,5}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ ((_ re.loop 1 2) (re.union (re.range "0" "9") (re.union (re.range "A" "F") (re.range "a" "f")))) ((_ re.loop 0 5) (re.++ (re.union (str.to_re ":") (str.to_re "-")) ((_ re.loop 0 2) (re.union (re.range "0" "9") (re.union (re.range "A" "F") (re.range "a" "f")))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)