;test regex ^.*([a-zA-Z]{2}|(\d[a-zA-Z])|([a-zA-Z]\d))$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.union (re.union ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.++ (re.range "0" "9") (re.union (re.range "a" "z") (re.range "A" "Z")))) (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.range "0" "9"))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)