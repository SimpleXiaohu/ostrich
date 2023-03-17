;test regex ^[a-zA-Z 0-9 \\s\\W]{0,100}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") ((_ re.loop 0 100) (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (str.to_re " ") (re.union (re.range "0" "9") (re.union (str.to_re " ") (re.union (str.to_re "\\") (re.union (str.to_re "s") (re.union (str.to_re "\\") (str.to_re "W"))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 50 (str.len X)))
(check-sat)
(get-model)