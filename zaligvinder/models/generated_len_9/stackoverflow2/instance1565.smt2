;test regex a[^a-z]{1000}b[^a-z]{1000}c[^a-z]{1000}d
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "a") (re.++ ((_ re.loop 1000 1000) (re.diff re.allchar (re.range "a" "z"))) (re.++ (str.to_re "b") (re.++ ((_ re.loop 1000 1000) (re.diff re.allchar (re.range "a" "z"))) (re.++ (str.to_re "c") (re.++ ((_ re.loop 1000 1000) (re.diff re.allchar (re.range "a" "z"))) (str.to_re "d")))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)