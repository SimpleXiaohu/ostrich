;test regex [a-zA-Z]{1,3}(.*?)$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ ((_ re.loop 1 3) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.* (re.diff re.allchar (str.to_re "\n")))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)