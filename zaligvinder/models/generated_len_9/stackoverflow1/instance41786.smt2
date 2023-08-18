;test regex ^(?:~!@|[a-z][a-z*]{0,2})[a-z*]{0,2}[a-z]*$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.union (re.++ (str.to_re "~") (re.++ (str.to_re "!") (str.to_re "@"))) (re.++ (re.range "a" "z") ((_ re.loop 0 2) (re.union (re.range "a" "z") (str.to_re "*"))))) (re.++ ((_ re.loop 0 2) (re.union (re.range "a" "z") (str.to_re "*"))) (re.* (re.range "a" "z"))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)