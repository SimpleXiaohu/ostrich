;test regex ^(C\d{4}[a-zA-Z]\d{7}|[a-zA-Z]{2}\d{6}[a-zA-Z]?|\d{9})$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.union (re.union (re.++ (str.to_re "C") (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) ((_ re.loop 7 7) (re.range "0" "9"))))) (re.++ ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.++ ((_ re.loop 6 6) (re.range "0" "9")) (re.opt (re.union (re.range "a" "z") (re.range "A" "Z")))))) ((_ re.loop 9 9) (re.range "0" "9")))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)