;test regex &([a-fh-km-z][a-z]|[lg][a-su-z]|[a-z]{3,})[a-z]*;
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "&") (re.++ (re.union (re.union (re.++ (re.union (re.range "a" "f") (re.union (re.range "h" "k") (re.range "m" "z"))) (re.range "a" "z")) (re.++ (re.union (str.to_re "l") (str.to_re "g")) (re.union (re.range "a" "s") (re.range "u" "z")))) (re.++ (re.* (re.range "a" "z")) ((_ re.loop 3 3) (re.range "a" "z")))) (re.++ (re.* (re.range "a" "z")) (str.to_re ";"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)